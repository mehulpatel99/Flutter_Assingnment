import 'package:flutter/material.dart';
import 'package:myproject/module_4/74_2.dart';

class my74 extends StatefulWidget {
  const my74({super.key});

  @override
  State<my74> createState() => _my74State();
}

TextEditingController name = TextEditingController();
TextEditingController name2 = TextEditingController();

class _my74State extends State<my74> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Data'),
        leading: Icon(Icons.person),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          // color: Colors.grey[300],
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                    label: Text('Name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: name2,
                decoration: InputDecoration(
                    label: Text('Email'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => my74fetch(
                                myname: name.text, myemail: name2.text)));
                  },
                  child: Text('Send'))
            ],
          ),
        ),
      ),
    );
  }
}
