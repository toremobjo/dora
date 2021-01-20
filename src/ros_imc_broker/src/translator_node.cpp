
//***************************************************************************
// Copyright 2016-2017 OceanScan - Marine Systems & Technology, Lda.        *
//***************************************************************************
// Licensed under the Apache License, Version 2.0 (the "License");          *
// you may not use this file except in compliance with the License.         *
// You may obtain a copy of the License at                                  *
//                                                                          *
// http://www.apache.org/licenses/LICENSE-2.0                               *
//                                                                          *
// Unless required by applicable law or agreed to in writing, software      *
// distributed under the License is distributed on an "AS IS" BASIS,        *
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. *
// See the License for the specific language governing permissions and      *
// limitations under the License.                                           *
//***************************************************************************
// Author: Ricardo Martins                                                  *
// Author: José Braga                                                       *
//***************************************************************************

// ISO C++ headers.
#include <queue>
#include <map>
#include <stdio.h>

// Boost headers.
#include <boost/algorithm/string.hpp>
#include <boost/timer.hpp>

// ROS headers.
#include <ros/ros.h>
#include <ros/callback_queue.h>

// IMC headers.
#include <IMC/Spec/EntityParameters.hpp>

// Local headers.
#include <ros_imc_broker/SimpleController.hpp>
//#include <ros_imc_broker/FollowReferenceController.hpp>

//ROS_IMC msgs
#include <imc_ros_msgs/Abort.h>
#include <imc_ros_msgs/Chlorophyll.h>
#include <imc_ros_msgs/Depth.h>
#include <imc_ros_msgs/DissolvedOrganicMatter.h>
#include <imc_ros_msgs/EntityActivationState.h>
#include <imc_ros_msgs/EntityList.h>
#include <imc_ros_msgs/EntityState.h>
#include <imc_ros_msgs/EstimatedState.h>
#include <imc_ros_msgs/FollowReference.h>
#include <imc_ros_msgs/FollowRefState.h>
#include <imc_ros_msgs/Heartbeat.h>
#include <imc_ros_msgs/NavigationUncertainty.h>
#include <imc_ros_msgs/OperationalLimits.h>
#include <imc_ros_msgs/OpticalBackscatter.h>
#include <imc_ros_msgs/PlanControlState.h>
#include <imc_ros_msgs/Reference.h>
#include <imc_ros_msgs/Salinity.h>
#include <imc_ros_msgs/Temperature.h>
#include <imc_ros_msgs/IridiumMsgTx.h>


//! Class that controls an entity, including some of its parameters.
//!
//! Standard execution is implemented in function «updateStateMachine»
//! through state enum «State». Expected behavior:
//!
//!  * query list of entities from DUNE.
//!  * wait for arrival of entities list.
//!  * once entity id has been resolved from entities list, query target entity parameters.
//!  * wait for arrival of target entity parameters.
//!  * compare loaded parameters with desired values.
//!    -- if they do not match, send desired parameters and go back to 3)
//!    -- if they match, activate task.
//!  * wait for entity activation state
//!  * once active, monitor two timeouts:
//!    -- the first one, to reconfigure entity parameters and go to 3)
//!    -- the final one, to deactivate entity.
//!  * wait for entity deactivation state
//!  * end of execution.
//!
class ParamsController: public ros_imc_broker::SimpleController
{
public:
  //! Time to wait for entity parameters update.
  static constexpr float c_entity_update = 60.0f;
  //! Time to wait for entity deactivation and end of execution.
  static constexpr float c_entity_deactivation = 200.0f;

  ParamsController(ros::NodeHandle& nh, const std::string& system_name):
    SimpleController(nh, system_name),
    /*state_(SM_ENTITIES_LIST_QUERY),*/
    entity_name_("Dummy Payload"),
    entity_id_(0),
    wait_params_(false),
    reset_(false)
  {
    // Subscribers.
    subscribe<ParamsController, IMC::EntityList>("IMC/In/EntityList", this);
    subscribe<ParamsController, IMC::EntityActivationState>("IMC/In/EntityActivationState", this);
    subscribe<ParamsController, IMC::EntityParameters>("IMC/In/EntityParameters", this);
    subscribe<ParamsController, IMC::Temperature>("IMC/In/Temperature", this);
    subscribe<ParamsController, IMC::Abort>("IMC/In/Abort", this);
    subscribe<ParamsController, IMC::Chlorophyll>("IMC/In/Chlorophyll", this);
    subscribe<ParamsController, IMC::Depth>("IMC/In/Depth", this);
    subscribe<ParamsController, IMC::DissolvedOrganicMatter>("IMC/In/DissolvedOrganicMatter", this);
    subscribe<ParamsController, IMC::EntityState>("IMC/In/EntityState", this);
    subscribe<ParamsController, IMC::EstimatedState>("IMC/In/EstimatedState", this);
    subscribe<ParamsController, IMC::FollowRefState>("IMC/In/FollowRefState",this);
    subscribe<ParamsController, IMC::Heartbeat>("IMC/In/Heartbeat",this);
    subscribe<ParamsController, IMC::NavigationUncertainty>("IMC/In/NavigationUncertainty",this);
    subscribe<ParamsController, IMC::OperationalLimits>("IMC/In/OperationalLimits", this);
    subscribe<ParamsController, IMC::OpticalBackscatter>("IMC/In/OpticalBackscatter",this);
    subscribe<ParamsController, IMC::PlanControlState>("IMC/In/PlanControlState",this);
    subscribe<ParamsController, IMC::Salinity>("IMC/In/Salinity",this);


    subscribe<ParamsController, imc_ros_msgs::Abort>("ROS/In/Abort",this);
    subscribe<ParamsController, imc_ros_msgs::Reference>("ROS/In/Reference",this);
    subscribe<ParamsController, imc_ros_msgs::FollowReference>("ROS/In/FollowReference",this);
    subscribe<ParamsController, imc_ros_msgs::IridiumMsgTx>("ROS/In/IridiumMsgTx", this);

    // Publishers.
    set_params_pub_ = nh.advertise<IMC::SetEntityParameters>("IMC/Out/SetEntityParameters", 1000);
    query_entity_list_pub_ = nh.advertise<IMC::EntityList>("IMC/Out/EntityList", 1000);
    query_entity_params_pub_ = nh.advertise<IMC::QueryEntityParameters>("IMC/Out/QueryEntityParameters", 1000);
    temperature_pub_ = nh.advertise<imc_ros_msgs::Temperature>("ROS/Out/Temperature",1000);
    abort_pub_ = nh.advertise<imc_ros_msgs::Abort>("ROS/Out/Abort",1000);
    chlorophyll_pub_ = nh.advertise<imc_ros_msgs::Chlorophyll>("ROS/Out/Chlorophyll",1000);
    depth_pub_ = nh.advertise<imc_ros_msgs::Depth>("ROS/Out/Depth",1000);
    dissolved_organic_matter_pub_ = nh.advertise<imc_ros_msgs::DissolvedOrganicMatter>("ROS/Out/DissolvedOrganicMatter",1000);
    entity_activation_state_pub_ = nh.advertise<imc_ros_msgs::EntityActivationState>("ROS/Out/EntityActivationState",1000);
    entity_list_pub_ = nh.advertise<imc_ros_msgs::EntityList>("ROS/Out/EntityList",1000);
    entity_state_pub_ = nh.advertise<imc_ros_msgs::EntityState>("ROS/Out/EntityState", 1000);
    estimated_state_pub_ = nh.advertise<imc_ros_msgs::EstimatedState>("ROS/Out/EstimatedState",1000);
    follow_ref_state_pub_ = nh.advertise<imc_ros_msgs::FollowRefState>("ROS/Out/FollowRefState",1000);
    heartbeat_pub_ = nh.advertise<imc_ros_msgs::Heartbeat>("ROS/Out/Heartbeat",1000);
    navigation_uncertainty_pub_ = nh.advertise<imc_ros_msgs::NavigationUncertainty>("ROS/Out/NavigationUncertainty",1000);
    operational_limits_pub_ = nh.advertise<imc_ros_msgs::OperationalLimits>("ROS/Out/OperationalLimits",1000);
    optical_backscatter_pub_ = nh.advertise<imc_ros_msgs::OpticalBackscatter>("ROS/Out/OpticalBackscatter",1000);
    plan_control_state_pub_ = nh.advertise<imc_ros_msgs::PlanControlState>("ROS/Out/PlanControlState",1000);
    salinity_pub_ = nh.advertise<imc_ros_msgs::Salinity>("ROS/Out/Salinity",1000);

    out_abort_pub_ = nh.advertise<IMC::Abort>("IMC/Out/Abort",1000);
    out_plan_control_pub_ = nh.advertise<IMC::PlanControl>("IMC/Out/PlanControl", 1000);
    out_reference_pub_ = nh.advertise<IMC::Reference>("IMC/Out/Reference", 1000);

    // Parameters.
    config_map_["Correction Factor"] = "2.0";
    config_map_["Data Period"] = "5.0";
  }

  virtual
  ~ParamsController(void)
  {
  }
  //Messages comming from ROS
  void
  on(const imc_ros_msgs::Abort& msg){
    ROS_WARN("Abort recieved! from ROS ");
    IMC::Abort imsg;
    imsg.setDestination(getSystemId());
    out_abort_pub_.publish(imsg);
  }

  void
  on(const imc_ros_msgs::Reference& msg){
    boost::shared_ptr<IMC::Reference> ref(new IMC::Reference);

    // Position reference.
    ref->setDestination(getSystemId());
    ref->setSource(0xFFFF);
    ref->lat = msg.lat.data;
    ref->lon = msg.lon.data;
    if (msg.flags.data == IMC::Reference::FLAG_MANDONE) {
      ROS_INFO("no more references, maneuver done");
      ref->flags = IMC::Reference::FLAG_MANDONE;
    }else{
      ref->flags = IMC::Reference::FLAG_LOCATION | IMC::Reference::FLAG_SPEED | IMC::Reference::FLAG_Z | IMC::Reference::FLAG_RADIUS | IMC::Reference::FLAG_DIRECT;
    }
    // Vertical reference.
    IMC::DesiredZ z_ref;
    z_ref.value = std::abs(msg.z.value.data);
    z_ref.z_units = msg.z.z_units.data;
    //z_ref.z_units = msg.z.value.data < 0 ? IMC::Z_DEPTH : IMC::Z_ALTITUDE;
    ref->z.set(z_ref);

    // Speed reference.
    IMC::DesiredSpeed speed_ref;
    speed_ref.value = msg.speed.value.data;
    speed_ref.speed_units = msg.speed.speed_units.data; //IMC::SUNITS_METERS_PS;

    ref->speed.set(speed_ref);
    ref->radius = msg.radius.data;

    out_reference_pub_.publish(ref);
  }

  void
  on(const imc_ros_msgs::FollowReference& msg) {
    ROS_INFO("engaging follow reference");
    plan_state_id_.clear();
    plan_id_ = "follow_ros";

    IMC::PlanControl pc;
    pc.plan_id = plan_id_;
    pc.op = IMC::PlanControl::PC_START;
    pc.type = IMC::PlanControl::PC_REQUEST;
    pc.request_id = 1000;

    IMC::FollowReference man;
    man.control_src = 0xFFFF;
    man.control_ent = 255;
    man.loiter_radius = msg.loiter_radius.data;
    man.timeout = 120.0;

    IMC::PlanManeuver pm;
    pm.maneuver_id = "1";
    pm.data.set(man);

    IMC::PlanSpecification ps;
    ps.plan_id = pc.plan_id;
    ps.start_man_id = pm.maneuver_id;
    ps.maneuvers.push_back(pm);

    pc.arg.set(ps);

    out_plan_control_pub_.publish(pc);
  }

  template <size_t N>
  void append_literal(std::vector<char*>& v, const char (&str)[N]) {
    char* p = new char[N];
    memcpy(p, str, N);
    v.push_back(p);
  }


  void
  on(const imc_ros_msgs::IridiumMsgTx& msg){
    ROS_INFO("Sending Iridium message from ROS");
    IMC::IridiumMsgTx imsg;
    imsg.setDestination(getSystemId());
    //std::string v ("hello world");
    //std::vector<char> vv (v.length(),v); TODO!!
    //imsg.data = vv;
    imsg.ttl = 60;
    imsg.req_id = 1;
    out_abort_pub_.publish(imsg);
  }

  // Messages from vehicle
  void
  on(const IMC::Abort& msg){
    ROS_WARN("Abort recieved!");
    imc_ros_msgs::Abort rmsg;
    rmsg.header.rosheader.stamp = ros::Time::now();
    rmsg.header.timestamp.data = msg.getTimeStamp();
    rmsg.header.src.data = msg.getSource();
    rmsg.header.src_ent.data = msg.getSourceEntity();
    rmsg.header.dst.data = msg.getDestination();
    rmsg.header.dst_ent.data = msg.getDestinationEntity();
    abort_pub_.publish(rmsg);
  }

  void
  on(const IMC::Chlorophyll& msg){
    if (isFromControlledSystem(msg)){
        imc_ros_msgs::Chlorophyll rmsg;
        rmsg.header.rosheader.stamp = ros::Time::now();
        rmsg.header.timestamp.data = msg.getTimeStamp();
        rmsg.header.src.data = msg.getSource();
        rmsg.header.src_ent.data = msg.getSourceEntity();
        rmsg.header.dst.data = msg.getDestination();
        rmsg.header.dst_ent.data = msg.getDestinationEntity();
        rmsg.value.data = msg.value;
        chlorophyll_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::Depth& msg){
    if (isFromControlledSystem(msg)){
        imc_ros_msgs::Depth rmsg;
        rmsg.header.rosheader.stamp = ros::Time::now();
        rmsg.header.timestamp.data = msg.getTimeStamp();
        rmsg.header.src.data = msg.getSource();
        rmsg.header.src_ent.data = msg.getSourceEntity();
        rmsg.header.dst.data = msg.getDestination();
        rmsg.header.dst_ent.data = msg.getDestinationEntity();
        rmsg.value.data = msg.value;
        depth_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::DissolvedOrganicMatter& msg){
    if (isFromControlledSystem(msg)){
        imc_ros_msgs::DissolvedOrganicMatter rmsg;
        rmsg.header.rosheader.stamp = ros::Time::now();
        rmsg.header.timestamp.data = msg.getTimeStamp();
        rmsg.header.src.data = msg.getSource();
        rmsg.header.src_ent.data = msg.getSourceEntity();
        rmsg.header.dst.data = msg.getDestination();
        rmsg.header.dst_ent.data = msg.getDestinationEntity();
        rmsg.value.data = msg.value;
        rmsg.type.data = msg.type;
        depth_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::EntityActivationState& msg)
  {
    if (isFromControlledEntity(msg)){
      entity_act_state_ = msg; //TODO
      imc_ros_msgs::EntityActivationState rmsg;
      rmsg.header.rosheader.stamp = ros::Time::now();
      rmsg.header.timestamp.data = msg.getTimeStamp();
      rmsg.header.src.data = msg.getSource();
      rmsg.header.src_ent.data = msg.getSourceEntity();
      rmsg.header.dst.data = msg.getDestination();
      rmsg.header.dst_ent.data = msg.getDestinationEntity();
      rmsg.state.data = msg.state;
      rmsg.error.data = msg.error;
      entity_activation_state_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::EntityState& msg)
  {
    if (isFromControlledSystem(msg)){
      imc_ros_msgs::EntityState rmsg;
      rmsg.header.rosheader.stamp = ros::Time::now();
      rmsg.header.timestamp.data = msg.getTimeStamp();
      rmsg.header.src.data = msg.getSource();
      rmsg.header.src_ent.data = msg.getSourceEntity();
      rmsg.header.dst.data = msg.getDestination();
      rmsg.header.dst_ent.data = msg.getDestinationEntity();
      rmsg.state.data = msg.state;
      entity_state_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::EstimatedState& msg)
  {
    if (isFromControlledSystem(msg)){
      imc_ros_msgs::EstimatedState rmsg;
      rmsg.header.rosheader.stamp = ros::Time::now();
      rmsg.header.timestamp.data = msg.getTimeStamp();
      rmsg.header.src.data = msg.getSource();
      rmsg.header.src_ent.data = msg.getSourceEntity();
      rmsg.header.dst.data = msg.getDestination();
      rmsg.header.dst_ent.data = msg.getDestinationEntity();
      rmsg.lat.data = msg.lat;
      rmsg.lon.data = msg.lon;
      rmsg.height.data = msg.height;
      rmsg.x.data = msg.x;
      rmsg.y.data = msg.y;
      rmsg.z.data = msg.z;
      rmsg.phi.data = msg.phi;
      rmsg.theta.data = msg.theta;
      rmsg.psi.data = msg.psi;
      rmsg.u.data = msg.u;
      rmsg.v.data = msg.v;
      rmsg.w.data = msg.w;
      rmsg.vx.data = msg.vx;
      rmsg.vy.data = msg.vx;
      rmsg.vz.data = msg.vz;
      rmsg.p.data = msg.p;
      rmsg.q.data = msg.q;
      rmsg.r.data = msg.r;
      rmsg.depth.data = msg.depth;
      rmsg.alt.data = msg.alt;
      estimated_state_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::FollowRefState& msg)
  {
    if (isFromControlledSystem(msg)){
      imc_ros_msgs::FollowRefState rmsg;
      rmsg.header.rosheader.stamp = ros::Time::now();
      rmsg.header.timestamp.data = msg.getTimeStamp();
      rmsg.header.src.data = msg.getSource();
      rmsg.header.src_ent.data = msg.getSourceEntity();
      rmsg.header.dst.data = msg.getDestination();
      rmsg.header.dst_ent.data = msg.getDestinationEntity();
      rmsg.control_ent.data = msg.control_ent;

      //IMC::Reference refMsg = msg.reference; TODO:finn ut av reference
      //rmsg.reference.flags.data = refMsg.flags;

      rmsg.state.data = msg.state;
      rmsg.plroximity.data = msg.proximity;

      follow_ref_state_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::Heartbeat& msg)
  {
    if (isFromControlledSystem(msg)){
      imc_ros_msgs::Heartbeat rmsg;
      rmsg.header.rosheader.stamp = ros::Time::now();
      rmsg.header.timestamp.data = msg.getTimeStamp();
      rmsg.header.src.data = msg.getSource();
      rmsg.header.src_ent.data = msg.getSourceEntity();
      rmsg.header.dst.data = msg.getDestination();
      heartbeat_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::NavigationUncertainty& msg)
  {
    if (isFromControlledSystem(msg)){
      imc_ros_msgs::NavigationUncertainty rmsg;
      rmsg.header.rosheader.stamp = ros::Time::now();
      rmsg.header.timestamp.data = msg.getTimeStamp();
      rmsg.header.src.data = msg.getSource();
      rmsg.header.src_ent.data = msg.getSourceEntity();
      rmsg.header.dst.data = msg.getDestination();
      rmsg.header.dst_ent.data = msg.getDestinationEntity();
      rmsg.x.data = msg.x;
      rmsg.y.data = msg.y;
      rmsg.z.data = msg.z;
      rmsg.phi.data = msg.phi;
      rmsg.theta.data = msg.theta;
      rmsg.psi.data = msg.psi;
      rmsg.u.data = msg.u;
      rmsg.v.data = msg.v;
      rmsg.w.data = msg.w;
      rmsg.p.data = msg.p;
      rmsg.q.data = msg.q;
      rmsg.r.data = msg.r;
      rmsg.bias_psi.data = msg.bias_psi;
      rmsg.bias_r.data = msg.bias_psi;
      navigation_uncertainty_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::OperationalLimits& msg)
  {
    if (isFromControlledSystem(msg)){
      imc_ros_msgs::OperationalLimits rmsg;
      rmsg.header.rosheader.stamp = ros::Time::now();
      rmsg.header.timestamp.data = msg.getTimeStamp();
      rmsg.header.src.data = msg.getSource();
      rmsg.header.src_ent.data = msg.getSourceEntity();
      rmsg.header.dst.data = msg.getDestination();
      rmsg.mask.data = msg.mask;
      rmsg.max_depth.data = msg.max_depth;
      rmsg.min_altitude.data = msg.min_altitude;
      rmsg.max_altitude.data = msg.max_altitude;
      rmsg.min_speed.data = msg.min_speed;
      rmsg.max_speed.data = msg.max_speed;
      rmsg.max_vrate.data = msg.max_vrate;
      rmsg.lat.data = msg.lat;
      rmsg.lon.data = msg.lon;
      rmsg.orientation.data = msg.orientation;
      rmsg.width.data = msg.width;
      rmsg.length.data = msg.length;
      operational_limits_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::OpticalBackscatter& msg){
    if (isFromControlledSystem(msg)){
        imc_ros_msgs::OpticalBackscatter rmsg;
        rmsg.header.rosheader.stamp = ros::Time::now();
        rmsg.header.timestamp.data = msg.getTimeStamp();
        rmsg.header.src.data = msg.getSource();
        rmsg.header.src_ent.data = msg.getSourceEntity();
        rmsg.header.dst.data = msg.getDestination();
        rmsg.header.dst_ent.data = msg.getDestinationEntity();
        rmsg.value.data = msg.value;
        optical_backscatter_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::PlanControlState& msg){
    if (isFromControlledSystem(msg)){
        imc_ros_msgs::PlanControlState rmsg;
        rmsg.header.rosheader.stamp = ros::Time::now();
        rmsg.header.timestamp.data = msg.getTimeStamp();
        rmsg.header.src.data = msg.getSource();
        rmsg.header.src_ent.data = msg.getSourceEntity();
        rmsg.header.dst.data = msg.getDestination();
        rmsg.header.dst_ent.data = msg.getDestinationEntity();
        rmsg.state.data = msg.state;
        rmsg.plan_id.data = msg.plan_id;
        rmsg.plan_eta.data = msg.plan_eta;
        rmsg.plan_progress.data = msg.plan_progress;
        rmsg.man_id.data = msg.man_id;
        rmsg.man_type.data = msg.man_type;
        rmsg.man_eta.data = msg.man_eta;
        rmsg.last_outcome.data = msg.last_outcome;
        plan_control_state_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::Salinity& msg){
    if (isFromControlledSystem(msg)){
        imc_ros_msgs::Salinity rmsg;
        rmsg.header.rosheader.stamp = ros::Time::now();
        rmsg.header.timestamp.data = msg.getTimeStamp();
        rmsg.header.src.data = msg.getSource();
        rmsg.header.src_ent.data = msg.getSourceEntity();
        rmsg.header.dst.data = msg.getDestination();
        rmsg.header.dst_ent.data = msg.getDestinationEntity();
        rmsg.value.data = msg.value;
        salinity_pub_.publish(rmsg);
    }
  }

  void
  on(const IMC::EntityParameters& msg)
  {
    if (isFromControlledEntity(msg))
    {
      // load current parameters (that match desired config_map)
      IMC::MessageList<IMC::EntityParameter>::const_iterator itr = msg.params.begin();
      int i = 0;
      for (; itr != msg.params.end(); ++itr)
      {
        if (config_map_.find((*itr)->name) != config_map_.end())
        {
          ROS_INFO("'%s' parameter #%d -- '%s' = '%s'", entity_name_.c_str(), i++,
                   (*itr)->name.c_str(), (*itr)->value.c_str());
          loaded_map_[(*itr)->name] = (*itr)->value;
        }
      }

      wait_params_ = false;
    }
  }

  void
  on(const IMC::EntityList& msg)
  {
    if (isFromControlledEntity(msg)){
      imc_ros_msgs::EntityList rmsg;
      rmsg.header.rosheader.stamp = ros::Time::now();
      rmsg.header.timestamp.data = msg.getTimeStamp();
      rmsg.header.src.data = msg.getSource();
      rmsg.header.src_ent.data = msg.getSourceEntity();
      rmsg.header.dst.data = msg.getDestination();
      rmsg.header.dst_ent.data = msg.getDestinationEntity();
      rmsg.op.data = msg.op;
      rmsg.list.data = msg.list;
      entity_list_pub_.publish(rmsg);
      ROS_WARN("Entity list published");
    }
    //TODO: fjern dette under
    if (!isFromControlledSystem(msg))
      return;

    if (msg.op != IMC::EntityList::OP_REPORT)
      return;

    std::vector<std::string> parts;
    boost::split(parts, msg.list, boost::is_any_of(";"), boost::token_compress_on);
    for (size_t i = 0; i < parts.size(); ++i)
    {
      std::vector<std::string> subparts;
      boost::split(subparts, parts[i], boost::is_any_of("="), boost::token_compress_on);
      if (subparts.size() != 2)
        continue;
      if (subparts[0] == entity_name_)
      {
        entity_id_ = boost::lexical_cast<unsigned>(subparts[1]);
        break;
      }
    }
  }

  void
  on(const IMC::Temperature& msg)
  {
    if (isFromControlledEntity(msg))
      ROS_INFO(" \tincoming data: '%s' (%s): %f", msg.getName(), entity_name_.c_str(), msg.value);
      imc_ros_msgs::Temperature rmsg;
      rmsg.value.data = msg.value;
      rmsg.header.rosheader.stamp = ros::Time::now();
      rmsg.header.timestamp.data = msg.getTimeStamp();
      rmsg.header.src.data = msg.getSource();
      rmsg.header.src_ent.data = msg.getSourceEntity();
      rmsg.header.dst.data = msg.getDestination();
      rmsg.header.dst_ent.data = msg.getDestinationEntity();
      temperature_pub_.publish(rmsg);
  }

  void
  publishParamMap(const std::map<std::string, std::string>& map)
  {
    IMC::SetEntityParameters req;
    req.name = entity_name_;

    for (std::map<std::string, std::string>::const_iterator itr = map.begin(); itr != map.end(); ++itr)
    {
      IMC::EntityParameter param;
      param.name = itr->first;
      param.value = itr->second;
      req.params.push_back(param);
    }

    set_params_pub_.publish(req);
  }

  void
  publishParamActive(bool active)
  {
    IMC::EntityParameter param;
    param.name = "Active";
    param.value = active ? "true" : "false";

    IMC::SetEntityParameters req;
    req.name = entity_name_;
    req.params.push_back(param);

    set_params_pub_.publish(req);
  }

  void
  requestActivation()
  {
    publishParamActive(true);
  }

  void
  requestDeactivation()
  {
    publishParamActive(false);
  }

  void
  queryEntityList()
  {
    IMC::EntityList req;
    req.op = IMC::EntityList::OP_QUERY;
    query_entity_list_pub_.publish(req);
    ros::Duration(1.0).sleep();
  }

  void
  queryEntityParameters()
  {
    IMC::QueryEntityParameters req;
    req.name = entity_name_;
    query_entity_params_pub_.publish(req);
    ros::Duration(1.0).sleep();
    wait_params_ = true;
  }

/*
private:
  enum State
  {
    //! Query entity list.
    SM_ENTITIES_LIST_QUERY,
    //! Wait for entity list reply.
    SM_ENTITIES_LIST_WAIT,
    //! Query desired entity parameters.
    SM_ENTITY_PARAMS_QUERY,
    //! Wait for desired entity parameters reply.
    SM_ENTITY_PARAMS_WAIT,
    //! Compare loaded entity parameters with desired.
    SM_ENTITY_PARAMS_COMPARE,
    //! Send new parameters if they mismatch.
    SM_ENTITY_PARAMS_SEND,
    //! Activate desired entity.
    SM_ENTITY_ACTIVATE,
    //! Wait for entity activation reply.
    SM_ENTITY_ACTIVATE_WAIT,
    //! Entity is running.
    SM_RUNNING,
    //! Deactivate entity.
    SM_ENTITY_DEACTIVATE,
    //! Wait for entity deactivation reply.
    SM_ENTITY_DEACTIVATE_WAIT,
    //! Finished execution.
    SM_END
  };
*/
  //! Tests if current entity parameters match desired parameters.
  //! @return true if current entity parameters match desired.
  bool
  compareEntityParameters(void)
  {
    std::map<std::string, std::string>::const_iterator it = config_map_.begin();
    for (; it != config_map_.end(); it++)
    {
      if (loaded_map_.find(it->first) != loaded_map_.end())
      {
        if (loaded_map_[it->first] != config_map_[it->first])
          return false;
      }
      else
      {
        return false;
      }
    }

    return true;
  }

  //! Tests if a given message was sent by the controlled system's entity.
  //! @return true if message is from controlled system, false otherwise.
  bool
  isFromControlledEntity(const IMC::Message& msg) const
  {
    return isFromControlledSystem(msg) && entity_id_ != 0 && msg.getSourceEntity() == entity_id_;
  }

  //! Redefine parameters in real-time, during plan execution.
  void
  resetParameters(void)
  {
    ROS_INFO("'%s' configure new parameters", entity_name_.c_str());
    config_map_["Correction Factor"] = "25.0";
    config_map_["Data Period"] = "15.0";
    //state_ = SM_ENTITY_PARAMS_QUERY;
    reset_ = true;
  }


  //! Entity name.
  std::string entity_name_;
  //! Entity identifier.
  unsigned entity_id_;
  //! Last received activation state.
  IMC::EntityActivationState entity_act_state_;
  //! Configuration map (desired parameters).
  std::map<std::string, std::string> config_map_;
  //! Loaded configuration map.
  std::map<std::string, std::string> loaded_map_;
  //! Waiting entity parameters.
  bool wait_params_;
  //! Publisher nodes.
  ros::Publisher set_params_pub_;
  ros::Publisher query_entity_list_pub_;
  ros::Publisher query_entity_params_pub_;
  //ROS_IMC Publishers
  ros::Publisher abort_pub_;
  ros::Publisher chlorophyll_pub_;
  ros::Publisher depth_pub_;
  ros::Publisher dissolved_organic_matter_pub_;
  ros::Publisher entity_activation_state_pub_;
  ros::Publisher entity_list_pub_;
  ros::Publisher entity_state_pub_;
  ros::Publisher estimated_state_pub_;
  ros::Publisher follow_ref_state_pub_;
  ros::Publisher heartbeat_pub_;
  ros::Publisher navigation_uncertainty_pub_;
  ros::Publisher operational_limits_pub_;
  ros::Publisher optical_backscatter_pub_;
  ros::Publisher plan_control_state_pub_;
  ros::Publisher salinity_pub_;
  ros::Publisher temperature_pub_;

//IMC_ROS publishers
  ros::Publisher out_abort_pub_;
  ros::Publisher out_plan_control_pub_;
  ros::Publisher out_reference_pub_;
  //! Parameter redefinition timer.
  boost::chrono::system_clock::time_point start_;
  //! Reset parameters flag.
  bool reset_;

  //! Desired plan id.
  std::string plan_id_;
  //! Executing plan id.
  std::string plan_state_id_;
  //! Current reference.
  boost::shared_ptr<IMC::Reference> reference_;
};

int
main(int argc, char** argv)
{
  ros::init(argc, argv, "translator_node", ros::init_options::AnonymousName);

  ros::NodeHandle nh;
  ParamsController ctl(nh, "lauv-simulator-1");

  while (ros::ok())
  {
    ros::getGlobalCallbackQueue()->callAvailable(ros::WallDuration(1.0));
  }

  return 0;
}
