import 'package:flutter/material.dart';

// class UserModel{
//   String? id;
//   String? name;
//   String? desc;
//   String? date;
//   String? time;
//
//   // UserModel({required this.id,required this.name,required this.desc,required this.date,required this.time});
//
//   UserMap() {
//     var Mapping = Map<String, dynamic>();
//     Mapping['id'] = id?? null;
//     Mapping['name'] = name;
//     Mapping['desc'] = desc;
//     Mapping['date'] = date;
//     Mapping['time'] = time;
//     return Mapping;
//   }
// }

class UserModel {
  int? id;
  String? name;
  String? desc;
  String? date;
  String? priority;

  // UserModel({required this.id,required this.name,required this.desc,required this.date,required this.time});

  UserMap() {
    var Mapping = Map<String, dynamic>();
    Mapping['id'] = id ?? null;
    Mapping['name'] = name;
    Mapping['desc'] = desc;
    Mapping['date'] = date;
    Mapping['priority'] = priority;
    return Mapping;
  }
}
