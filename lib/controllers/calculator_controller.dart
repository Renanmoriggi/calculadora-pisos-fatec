import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/parse_helper.dart';
import '../models/floor_model.dart';
import '../models/result_model.dart';
import '../models/room_model.dart';

class CalculatorController {
  final _room = RoomModel();
  final _floor = FloorModel();

  void setRoomWidth(String value) {
    _room.width = ParseHelper.toDouble(value);
  }

  void setRoomLength(String value) {
    _room.length = ParseHelper.toDouble(value);
  }

  void setFloorWidth(String value) {
    _floor.width = ParseHelper.toDouble(value);
  }

  void setFloorLength(String value) {
    _floor.length = ParseHelper.toDouble(value);
  }
  void setFloorPrice(String value) {
    _floor.price = ParseHelper.toDouble(value);
  }
   getFloorPrice(){
    return _floor.price;
  }

  ResultModel calculate() {
    if(_floor.price == 0) _abrirDialog();
    return ResultModel(
      piecesByWidth: (_room.width / _floor.width).ceil(),
      piecesByLength: (_room.length / _floor.length).ceil(),
      areaFloor: _floor.length * _floor.width,
      value: _floor.price,
    );
  } 

  Widget _abrirDialog() {
    return AlertDialog(
          title: Text("Titulo dialog"),
          content: Text("0 não é permitido"),
        );
  }

  void alert() {
   print('oiii');
  }
}
