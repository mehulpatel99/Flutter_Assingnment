import 'package:flutter/material.dart';
import 'package:mysqflite/Database/model.dart';
import 'package:mysqflite/Database/repo.dart';

// class service{
//   late Repo repository;
//
//   service(){
//     repository=Repo();
//   }
//
//   SaveData(UserModel? userModel)async{
//     return await repository.insert('mydata', userModel!.UserMap());
//   }
//
//   DishplayData()async{
//     return await repository.getdata('mydata');
//   }
//
//   updatedata(UserModel? userModel)async{
//     return await repository.updatedata('mydata', userModel!.UserMap());
//   }
//   deletedata(UserModel? userModel) async{
//     return await repository.deletedata('mydata', userModel!.UserMap());
//   }
// }
class service {
  late UserRepo repository;

  service() {
    repository = UserRepo();
  }

  saveData(UserModel? userModel) async {
    return await repository.insertData('mytbdata', userModel!.UserMap());
  }

  getdat() async {
    return await repository.getdata('mytbdata');
  }

  updatedata(UserModel? userModel) async {
    return await repository.updatedata('mytbdata', userModel!.UserMap());
  }

  deletedata(UserModel? userModel) async {
    return await repository.deletedata('mytbdata', userModel!.UserMap());
  }
}
