
"use strict";

let DeleteThermalSource = require('./DeleteThermalSource.js')
let AddThermalSource = require('./AddThermalSource.js')
let RegisterGui = require('./RegisterGui.js')
let DeleteSoundSource = require('./DeleteSoundSource.js')
let LoadMap = require('./LoadMap.js')
let LoadExternalMap = require('./LoadExternalMap.js')
let MoveRobot = require('./MoveRobot.js')
let AddSoundSource = require('./AddSoundSource.js')
let AddRfidTag = require('./AddRfidTag.js')
let DeleteRfidTag = require('./DeleteRfidTag.js')
let AddCO2Source = require('./AddCO2Source.js')
let DeleteCO2Source = require('./DeleteCO2Source.js')

module.exports = {
  DeleteThermalSource: DeleteThermalSource,
  AddThermalSource: AddThermalSource,
  RegisterGui: RegisterGui,
  DeleteSoundSource: DeleteSoundSource,
  LoadMap: LoadMap,
  LoadExternalMap: LoadExternalMap,
  MoveRobot: MoveRobot,
  AddSoundSource: AddSoundSource,
  AddRfidTag: AddRfidTag,
  DeleteRfidTag: DeleteRfidTag,
  AddCO2Source: AddCO2Source,
  DeleteCO2Source: DeleteCO2Source,
};
