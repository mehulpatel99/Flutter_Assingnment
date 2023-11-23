import 'package:flutter/material.dart';
import 'package:myproject/widgets_example/radio_button.dart';

class my57 extends StatefulWidget {
  const my57({super.key});

  @override
  State<my57> createState() => _my57State();
}

enum myrd { green, red }

class _my57State extends State<my57> {
  myrd mygrp = myrd.green;
  List<Color> mycolor = [Colors.green, Colors.red];
  var selectcolor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dishplay Color change'),
        ),
        body: Center(
          child: Container(
            color: mycolor[selectcolor],
            child: Column(
              children: [
                ListTile(
                  leading: Text('Green'),
                  trailing: Radio(
                      value: 0,
                      groupValue: selectcolor,
                      onChanged: (value) {
                        setState(() {
                          selectcolor = value!;
                        });
                      }),
                ),
                ListTile(
                  leading: Text('Red'),
                  trailing: Radio(
                      value: 1,
                      groupValue: selectcolor,
                      onChanged: (value) {
                        setState(() {
                          selectcolor = value!;
                        });
                      }),
                ),
                // Container(
                //   height: 400,
                //   width: 500,
                //   color: mycolor[selectcolor],
                // )
              ],
            ),
          ),
        ));
  }
}
