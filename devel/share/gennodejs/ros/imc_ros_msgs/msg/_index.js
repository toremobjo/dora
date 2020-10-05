
"use strict";

let Abort = require('./Abort.js');
let Chlorophyll = require('./Chlorophyll.js');
let Depth = require('./Depth.js');
let DesiredSpeed = require('./DesiredSpeed.js');
let DesiredZ = require('./DesiredZ.js');
let DissolvedOrganicMatter = require('./DissolvedOrganicMatter.js');
let EntityActivationState = require('./EntityActivationState.js');
let EntityList = require('./EntityList.js');
let EntityState = require('./EntityState.js');
let EstimatedState = require('./EstimatedState.js');
let FollowRefState = require('./FollowRefState.js');
let FollowReference = require('./FollowReference.js');
let GpsFix = require('./GpsFix.js');
let Header = require('./Header.js');
let Heartbeat = require('./Heartbeat.js');
let IridiumMsgTx = require('./IridiumMsgTx.js');
let NavigationUncertainty = require('./NavigationUncertainty.js');
let OperationalLimits = require('./OperationalLimits.js');
let OpticalBackscatter = require('./OpticalBackscatter.js');
let PlanControlState = require('./PlanControlState.js');
let Reference = require('./Reference.js');
let Salinity = require('./Salinity.js');
let SimulatedState = require('./SimulatedState.js');
let StopManeuver = require('./StopManeuver.js');
let Temperature = require('./Temperature.js');
let TrexAttribute = require('./TrexAttribute.js');
let TrexOperation = require('./TrexOperation.js');
let TrexToken = require('./TrexToken.js');
let VehicleMedium = require('./VehicleMedium.js');
let YoYo = require('./YoYo.js');

module.exports = {
  Abort: Abort,
  Chlorophyll: Chlorophyll,
  Depth: Depth,
  DesiredSpeed: DesiredSpeed,
  DesiredZ: DesiredZ,
  DissolvedOrganicMatter: DissolvedOrganicMatter,
  EntityActivationState: EntityActivationState,
  EntityList: EntityList,
  EntityState: EntityState,
  EstimatedState: EstimatedState,
  FollowRefState: FollowRefState,
  FollowReference: FollowReference,
  GpsFix: GpsFix,
  Header: Header,
  Heartbeat: Heartbeat,
  IridiumMsgTx: IridiumMsgTx,
  NavigationUncertainty: NavigationUncertainty,
  OperationalLimits: OperationalLimits,
  OpticalBackscatter: OpticalBackscatter,
  PlanControlState: PlanControlState,
  Reference: Reference,
  Salinity: Salinity,
  SimulatedState: SimulatedState,
  StopManeuver: StopManeuver,
  Temperature: Temperature,
  TrexAttribute: TrexAttribute,
  TrexOperation: TrexOperation,
  TrexToken: TrexToken,
  VehicleMedium: VehicleMedium,
  YoYo: YoYo,
};
