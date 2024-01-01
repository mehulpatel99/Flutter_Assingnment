import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

// class MyDatabase
// {
//
//   Future<Database> SetData() async{
//     var dir = await getApplicationDocumentsDirectory();
//     var path = join(dir.path,'my_db');
//     var database = await openDatabase(path,version: 1,onCreate: MyTable);
//     return database;
//   }
//
//   Future<void> MyTable(Database data,int varsion,)async{
//     String sql = 'CREATE TABLE mytbdata( id primary key autoincrement, name TEXT, desc TEXT,date TEXT,time TEXT)';
//     await data.execute(sql);
//   }
// }
class MyDatabase {
  Future<Database> SetData() async {
    var dir = await getApplicationDocumentsDirectory();
    var path = join(dir.path, 'my_db');
    var database = await openDatabase(path, version: 1, onCreate: MyTable);
    return database;
  }

  Future<void> MyTable(
    Database data,
    int varsion,
  ) async {
    String sql =
        'CREATE TABLE mytbdata( id integer primary key autoincrement, name TEXT, desc TEXT,date TEXT,priority TEXT)';
    await data.execute(sql);
  }
}
