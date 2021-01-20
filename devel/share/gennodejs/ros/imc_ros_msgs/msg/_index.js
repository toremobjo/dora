
"use strict";

let OpticalBackscatter = require('./OpticalBackscatter.js');
let DesiredZ = require('./DesiredZ.js');
let DesiredSpeed = require('./DesiredSpeed.js');
let Chlorophyll = require('./Chlorophyll.js');
let DissolvedOrganicMatter = require('./DissolvedOrganicMatter.js');
let SimulatedState = require('./SimulatedState.js');
let Depth = require('./Depth.js');
let GpsFix = require('./GpsFix.js');
let Header = require('./Header.js');
let OperationalLimits = require('./OperationalLimits.js');
let Heartbeat = require('./Heartbeat.js');
let NavigationUncertainty = require('./NavigationUncertainty.js');
let IridiumMsgTx = require('./IridiumMsgTx.js');
let VehicleMedium = require('./VehicleMedium.js');
let StopManeuver = require('./StopManeuver.js');
let TrexOperation = require('./TrexOperation.js');
let FollowReference = require('./FollowReference.js');
let EntityList = require('./EntityList.js');
let EstimatedState = require('./EstimatedState.js');
let Reference = require('./Reference.js');
let YoYo = require('./YoYo.js');
let TrexToken = require('./TrexToken.js');
let EntityActivationState = require('./EntityActivationState.js');
let TrexAttribute = require('./TrexAttribute.js');
let Abort = require('./Abort.js');
let Temperature = require('./Temperature.js');
let PlanControlState = require('./PlanControlState.js');
let Salinity = require('./Salinity.js');
let EntityState = require('./EntityState.js');
let FollowRefState = require('./FollowRefState.js');

module.exports = {
  OpticalBackscatter: OpticalBackscatter,
  DesiredZ: DesiredZ,
  DesiredSpeed: DesiredSpeed,
  Chlorophyll: Chlorophyll,
  DissolvedOrganicMatter: DissolvedOrganicMatter,
  SimulatedState: SimulatedState,
  Depth: Depth,
  GpsFix: GpsFix,
  Header: Header,
  OperationalLimits: OperationalLimits,
  Heartbeat: Heartbeat,
  NavigationUncertainty: NavigationUncertainty,
  IridiumMsgTx: IridiumMsgTx,
  VehicleMedium: VehicleMedium,
  StopManeuver: StopManeuver,
  TrexOperation: TrexOperation,
  FollowReference: FollowReference,
  EntityList: EntityList,
  EstimatedState: EstimatedState,
  Reference: Reference,
  YoYo: YoYo,
  TrexToken: TrexToken,
  EntityActivationState: EntityActivationState,
  TrexAttribute: TrexAttribute,
  Abort: Abort,
  Temperature: Temperature,
  PlanControlState: PlanControlState,
  Salinity: Salinity,
  EntityState: EntityState,
  FollowRefState: FollowRefState,
};
