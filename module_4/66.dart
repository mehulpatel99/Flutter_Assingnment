import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class my66 extends StatefulWidget {
  const my66({super.key});

  @override
  State<my66> createState() => _my66State();
}

class _my66State extends State<my66> {
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date'),
      ),
      body: Center(
        child: Container(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current date : ${DateFormat('yMMMMd').format(time)}',
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      mybar(context);
                    });
                  },
                  child: Text('Date'))
            ],
          ),
        ),
      ),
    );
  }

  mybar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        'Current date : ${DateFormat('yMMMMd').format(time)}',
        style: TextStyle(fontSize: 30),
      ),
    ));
  }
}
