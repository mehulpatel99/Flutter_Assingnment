import 'dart:io';

import 'package:flutter/material.dart';

class my65 extends StatefulWidget {
  const my65({super.key});

  @override
  State<my65> createState() => _my65State();
}

class _my65State extends State<my65> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exit'),
        leading: Icon(Icons.exit_to_app),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              myalert();
            },
            child: Text('Exit')),
      ),
    );
  }

  myalert() {
    AlertDialog alert = AlertDialog(
      title: Text('Exit'),
      content: Text('Are you sure want to exit'),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text('Yes')),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('No'))
      ],
    );
    showDialog(context: context, builder: (context) => alert);
  }
}
