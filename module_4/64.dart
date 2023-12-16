import 'package:flutter/material.dart';

class my64 extends StatefulWidget {
  const my64({super.key});

  @override
  State<my64> createState() => _my64State();
}

List city = ['Udaipur', 'Banswara', 'Jaismand', 'Jaipur'];
String? result;

class _my64State extends State<my64> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alert dialog'),
      ),
      body: Card(
        child: ListTile(
          onTap: () {
            myalert4();
          },
          title: Text('$result'),
        ),
      ),
    );
  }

  myalert4() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Cities'),
            content: Container(
              height: 300,
              width: double.maxFinite,
              child: SimpleDialog(
                children: city
                    .map((e) => SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context,e);
                          },
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
          );
        }).then((value) {
      if (value != null) {
        setState(() {
          result = value;
        });
      }
    });
  }
}
