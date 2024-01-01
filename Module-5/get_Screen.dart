import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mysqflite/Database/model.dart';
import 'package:mysqflite/Database/service.dart';
import 'package:mysqflite/edit_data.dart';
import 'package:mysqflite/regester.dart';

class Get_Screen extends StatefulWidget {
  const Get_Screen({super.key});

  @override
  State<Get_Screen> createState() => _Get_ScreenState();
}

class _Get_ScreenState extends State<Get_Screen> {
//search users
  List<Map<String, dynamic>> founduser = [];
  void runfilter(String enterKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enterKeyword.isEmpty) {
      results = mylist.cast<Map<String, dynamic>>();
    } else {
      // results = mylist.cast<Map<String, dynamic>>().where((element) => false);
    }
  }

  late List<UserModel> mylist = <UserModel>[];
  var _service = service();
  @override
  void initState() {
    // TODO: implement initState
    founduser = mylist.cast<Map<String, dynamic>>();
    super.initState();
    myget();
  }

  myget() async {
    var _data = await _service.getdat();
    mylist = <UserModel>[];

    _data.forEach((rowdata) {
      setState(() {
        var _models = UserModel();
        _models.id = rowdata['id'];
        _models.name = rowdata['name'];
        _models.desc = rowdata['desc'];
        _models.date = rowdata['date'];
        _models.priority = rowdata['priority'];
        mylist.add(_models);
      });
    });
  }

  bool search2 = false;
  // Color? clr = Colors.green;
  Widget build(BuildContext context) {
    mylist.sort((a, b) => a.date!.compareTo(b.date.toString()));
    return Scaffold(
      appBar: AppBar(
        title: !search2
            ? Text('Mydata')
            : TextField(
                decoration: InputDecoration(hintText: "search"),
              ),
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegesterScreen()));
            },
            icon: Icon(Icons.home)),
        actions: [
          search2
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      search2 = false;
                    });
                  },
                  icon: Icon(Icons.cancel))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      search2 = true;
                    });
                  },
                  icon: Icon(Icons.search))
        ],
      ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 50),
          child: Container(
            height: 60,
            width: 300,
            child: TextField(
              readOnly: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.task),
                    hintText: 'Your Task',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: ListView.builder(
              itemCount: mylist.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                String? prio = mylist[index].priority;
                return Column(
                  children: [
                    if (prio == 'Low') ...[
                      Card(
                        elevation: 20,
                        color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                size: 40,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  '${mylist[index].id}',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('${mylist[index].name}',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                Text('${mylist[index].desc}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('${mylist[index].date}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                Text('${mylist[index].priority}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Edit_Screen(
                                                  usermodel: mylist[index])));
                                    },
                                    child: Text('Edit')),
                                ElevatedButton.icon(
                                    onPressed: () {
                                      var _models = UserModel();
                                      var _service = service();
                                      setState(() {
                                        _models.id = mylist[index].id;
                                      });
                                      var result = _service.deletedata(_models);
                                      print('Succesfully delete');
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Get_Screen()));
                                    },
                                    icon: Icon(Icons.delete),
                                    label: Text('Delete')),
                              ],
                            )
                          ],
                        ),
                      ),
                    ] else if (prio == 'Medium') ...[
                      Card(
                        elevation: 20,
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                size: 40,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  '${mylist[index].id}',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('${mylist[index].name}',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                Text('${mylist[index].desc}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('${mylist[index].date}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                Text('${mylist[index].priority}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Edit_Screen(
                                                  usermodel: mylist[index])));
                                    },
                                    child: Text('Edit')),
                                ElevatedButton.icon(
                                    onPressed: () {
                                      var _models = UserModel();
                                      var _service = service();
                                      setState(() {
                                        _models.id = mylist[index].id;
                                      });
                                      var result = _service.deletedata(_models);
                                      print('Succesfully delete');
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Get_Screen()));
                                    },
                                    icon: Icon(Icons.delete),
                                    label: Text('Delete')),
                              ],
                            )
                          ],
                        ),
                      ),
                    ] else if (prio == "High") ...[
                      Card(
                        elevation: 20,
                        color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                size: 40,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  '${mylist[index].id}',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('${mylist[index].name}',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                Text('${mylist[index].desc}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('${mylist[index].date}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                Text('${mylist[index].priority}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Edit_Screen(
                                                  usermodel: mylist[index])));
                                    },
                                    child: Text('Edit')),
                                ElevatedButton.icon(
                                    onPressed: () {
                                      var _models = UserModel();
                                      var _service = service();
                                      setState(() {
                                        _models.id = mylist[index].id;
                                      });
                                      var result = _service.deletedata(_models);
                                      print('Succesfully delete');
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Get_Screen()));
                                    },
                                    icon: Icon(Icons.delete),
                                    label: Text('Delete')),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]
                  ],
                );
              }),
        ),
      ]),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegesterScreen()));
          },
          label: Text('Add')),
    );
  }
}
