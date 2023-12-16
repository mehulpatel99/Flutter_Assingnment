import 'package:flutter/material.dart';

class my74fetch extends StatelessWidget {
  var myname;
  var myemail;
  my74fetch({required this.myname,required this.myemail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: ListTile(
            title: Text('Name : $myname'),
            subtitle: Text('Email : $myemail'),
          ),
        ),
      ),
    );
  }
}
