import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mysqflite/Database/model.dart';
import 'package:mysqflite/Database/service.dart';
// import 'package:mysqflite/MyApi/postApi.dart';
import 'package:mysqflite/get_Screen.dart';

class Edit_Screen extends StatefulWidget {
  UserModel usermodel;
  Edit_Screen({required this.usermodel});

  @override
  State<Edit_Screen> createState() => _Edit_ScreenState();
}

TextEditingController NameCon = TextEditingController();
TextEditingController descCon = TextEditingController();
TextEditingController dateCon = TextEditingController();
TextEditingController priority = TextEditingController();

class _Edit_ScreenState extends State<Edit_Screen> {
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

//priority
  String itemvalue = 'Low';
  var items = ['Low', 'Medium', 'High'];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateCon.text = '';
    setState(() {
      NameCon.text = widget.usermodel.name!;
      descCon.text = widget.usermodel.desc!;
      dateCon.text = widget.usermodel.date!;
      priority.text = widget.usermodel.priority!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Data'),
      ),
      body: Center(
        child: Card(
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextField(
                  controller: NameCon,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      label: Text("NAME"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                TextField(
                  controller: descCon,
                  decoration: InputDecoration(
                      hintText: 'Description',
                      label: Text("DESCRIPTION"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
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
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                TextField(
                  controller: priority,
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
                            // onTap: () {
                            //   priorityCon.text = itemvalue;
                            // },
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
                      setState(() async {
                        var _usermodels = UserModel();
                        var _service = service();

                        _usermodels.id = widget.usermodel.id;
                        _usermodels.name = NameCon.text;
                        _usermodels.desc = descCon.text;
                        _usermodels.date = dateCon.text;
                        _usermodels.priority = itemvalue;

                        var result = await _service.updatedata(_usermodels);
                        print('succesfully update');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Get_Screen()));
                      });
                    },
                    child: Text('Update')),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
