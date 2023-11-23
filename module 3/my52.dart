import 'package:flutter/material.dart';

class calc extends StatefulWidget {
  const calc({super.key});

  @override
  State<calc> createState() => _calcState();
}

enum mycal { Add, Sub, Mul, Div }

class _calcState extends State<calc> {
  mycal _megrp = mycal.Sub;

  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: num1Controller,
                  decoration: InputDecoration(
                    label: Text('Num 1'),
                      hintText: 'enter your number 1',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: num2Controller,
                  decoration: InputDecoration(
                    label: Text('Num 2'),
                      hintText: 'enter your number 2',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                Text('$result'),
              ],
            ),
          ),
          ListTile(
            title: Text('Add'),
            trailing: Radio(
                value: mycal.Add,
                groupValue: _megrp,
                onChanged: (value) {
                  setState(() {
                    _megrp = value!;
                    add1(context);
                  });
                }),
          ),
          ListTile(
            title: Text('Sub'),
            trailing: Radio(
                value: mycal.Sub,
                groupValue: _megrp,
                onChanged: (value) {
                  setState(() {
                    _megrp = value!;
                    sub(context);
                  });
                }),
          ),
          ListTile(
            title: Text('Multiply'),
            trailing: Radio(
                value: mycal.Mul,
                groupValue: _megrp,
                onChanged: (value) {
                  setState(() {
                    _megrp = value!;
                    multiply(context);
                  });
                }),
          ),
           ListTile(
            title: Text('Multiply'),
            trailing: Radio(
                value: mycal.Div,
                groupValue: _megrp,
                onChanged: (value) {
                  setState(() {
                    _megrp = value!;
                    divide(context);
                  });
                }),
          ),
          SizedBox(height: 20,),
          Text('result = $result',style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }

  void add1(BuildContext context) {
    int me1 = int.parse(num1Controller.text);
    int me2 = int.parse(num2Controller.text);
    ;

    result = (me1 + me2).toString();
  }

  void sub(BuildContext context) {
    int me1 = int.parse(num1Controller.text);
    int me2 = int.parse(num2Controller.text);

    result = (me1 - me2).toString();
  }

  void multiply(BuildContext context) {
    int me1 = int.parse(num1Controller.text);
    int me2 = int.parse(num2Controller.text);

    result = (me1 * me2).toString();
  }
   void divide(BuildContext context) {
    double me1 = double.parse(num1Controller.text);
    double me2 = double.parse(num2Controller.text);

    result = (me1 / me2).toString();
  }
}
