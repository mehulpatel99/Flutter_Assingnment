import 'package:flutter/material.dart';
import 'package:myproject/module_4/76fetch.dart';

class my76 extends StatefulWidget {
  const my76({super.key});

  @override
  State<my76> createState() => _my76State();
}

class _my76State extends State<my76> {
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add),
        title: Text('Sum'),
      ),
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: num1controller,
                decoration: InputDecoration(
                    hintText: 'Enter num1',
                    label: Text('NUM1'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: num2controller,
                decoration: InputDecoration(
                    hintText: 'Enter num2',
                    label: Text('NUM2'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    int number1 = int.parse(num1controller.text);
                    int number2 = int.parse(num2controller.text);
                    int total = number1 + number2;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                my762(Total: total.toString())));
                  },
                  icon: Icon(Icons.add),
                  label: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
