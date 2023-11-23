import 'package:flutter/material.dart';

class my51 extends StatefulWidget {
  const my51({super.key});

  @override
  State<my51> createState() => _my51State();
}

TextEditingController num1Controller = TextEditingController();
TextEditingController num2Controller = TextEditingController();
var m;
var s;

List res = [];

class _my51State extends State<my51> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          padding: EdgeInsets.all(20),
          color: Colors.grey[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: num1Controller,
                decoration: InputDecoration(
                    hintText: 'enter 1st number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: num2Controller,
                decoration: InputDecoration(
                    hintText: 'enter 2nd number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      m = int.parse(num1Controller.text.toString());
                      s = int.parse(num2Controller.text.toString());
                      res.clear();
                      for (int i = m+1; i < s; i++) {
                        // res.add(m + 2);
                        // if (m == m) {
                        //   res.add(m + 2);
                        // }

                        res.add(i);
                      }
                    });
                  },
                  child: Text('Click')),
              Text(res.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
