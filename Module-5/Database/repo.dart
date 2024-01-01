import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'db_helper.dart';

// class Repo{
//    MyDatabase? mydatabase;
//    Database? mydb;
//
//    repo(){
//      mydatabase=MyDatabase();
//    }
//
//    Future<Database?> get data async{
//      if(mydb != null){
//        return mydb;
//      }else{
//        mydb=await mydatabase?.SetData();
//        return mydb;
//      }
//    }
//
//    insert(table,data)async{
//      var con = await data;
//      return await con!.insert(table, data);
//    }
//
//    getdata(table)async {
//      var con = await data;
//      return await con!.query(table);
//    }
//
//    updatedata(table,data)async {
//      var con = await data;
//      return await con!.update(table,data, where: 'id=?',whereArgs: [data['id']]);
//    }
//
//    deletedata(table,data)async {
//      var con = await data;
//      return await con!.delete(table,where: 'id=?', whereArgs: [data['id']]);
//    }
// }
class UserRepo {
  MyDatabase? mydatabase;
  Database? mydb;

  UserRepo() {
    mydatabase = MyDatabase();
  }

  Future<Database?> get userData async {
    if (mydb != null) {
      return mydb;
    } else {
      mydb = await mydatabase?.SetData();
      return mydb;
    }
  }

  insertData(table, data) async {
    var con = await userData;
    return await con!.insert(table, data);
  }

  getdata(table) async {
    var con = await userData;
    return await con!.query(table);
  }

  updatedata(table, data) async {
    var con = await userData;
    return await con!
        .update(table, data, where: 'id=?', whereArgs: [data['id']]);
  }

  deletedata(table, data) async {
    var con = await userData;
    return await con!.delete(table, where: 'id=?', whereArgs: [data['id']]);
  }
}
