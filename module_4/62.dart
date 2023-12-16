import 'package:flutter/material.dart';

class alert62 extends StatefulWidget {
  const alert62({super.key});

  @override
  State<alert62> createState() => _alert62State();
}

class _alert62State extends State<alert62> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialoge'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            myalert(context);
          },
          child: Container(
            height: 200,
            width: 200,
            // color: Colors.teal,
            decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(40)),
            child: Center(child: Text('Submit',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.white),)),
          ),
        ),
      ),
    );
  }

  myalert(BuildContext context) {
    AlertDialog alert62 = AlertDialog(
      title: Text('Are you sure want to exit !'),
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
    showDialog(context: context, builder: (context) => alert62);
  }
}
