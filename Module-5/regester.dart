import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mysqflite/Database/model.dart';
import 'package:mysqflite/Database/service.dart';
import 'package:mysqflite/get_Screen.dart';

class RegesterScreen extends StatefulWidget {
  const RegesterScreen({super.key});

  @override
  State<RegesterScreen> createState() => _RegesterScreenState();
}

TextEditingController nameCon2 = TextEditingController();
TextEditingController descCon = TextEditingController();
TextEditingController dateCon = TextEditingController();
TextEditingController priorityCon = TextEditingController();

class _RegesterScreenState extends State<RegesterScreen> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateCon.text = '';
  }

  //dropdown
  String itemvalue = 'Low';
  var items = ['Low', 'Medium', 'High'];
  var myitem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
      ),
      body: Center(
        child: Card(
          elevation: 20,
          child: Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(
                // color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.amber,
                  ),
                ),
                TextField(
                  controller: nameCon2,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    label: Text("NAME"),
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(10))
                  ),
                ),
                TextField(
                  controller: descCon,
                  decoration: InputDecoration(
                    hintText: 'Description',
                    label: Text("DESCRIPTION"),
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(10))
                  ),
                ),
                TextField(
                  controller: dateCon,
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2050),
                    );
                    if (pickeddate != null) {
                      String? formetdate =
                          DateFormat('dd-MM-yyyy').format(pickeddate);
                      setState(() {
                        dateCon.text = formetdate;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'date',
                    label: Text("DATE"),
                  ),
                ),
                TextField(
                  controller: priorityCon,
                  readOnly: true,
                  // onTap: () {
                  //   myitem = itemvalue;
                  // },
                  decoration: InputDecoration(
                    hintText: 'Priority',
                    suffixIcon: DropdownButtonFormField(
                        value: itemvalue,
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            onTap: () {
                              priorityCon.text = itemvalue;
                            },
                            child: Text(items),
                            value: items,
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            itemvalue = newValue!;
                          });
                        }),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      var usermodel = UserModel();
                      var userservice = service();

                      usermodel.name = nameCon2.text;
                      usermodel.desc = descCon.text;
                      usermodel.date = dateCon.text;
                      usermodel.priority = itemvalue;
                      setState(() async {
                        if (nameCon2.text.isNotEmpty &&
                            descCon.text.isNotEmpty &&
                            dateCon.text.isNotEmpty) {
                          var result = await userservice.saveData(usermodel);
                          print('succesfully submit');
                          print(usermodel);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Get_Screen()));
                        }
                      });
                    },
                    child: Text('Submit')),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Get_Screen()));
          },
          child: Icon(Icons.remove_red_eye_rounded)),
    );
  }
}
