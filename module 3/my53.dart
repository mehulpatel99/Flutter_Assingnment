import 'package:flutter/material.dart';

class my53 extends StatefulWidget {
  const my53({super.key});

  @override
  State<my53> createState() => _my53State();
}

class _my53State extends State<my53> {
  bool status = true;
  Color? bgcolor = Colors.blueAccent[100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background changes'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: status ? Colors.amber : Colors.black,
        color: bgcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Background changes for click the button',style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (status) {
                        bgcolor = Colors.teal[400];
                        status = false;
                      } else {
                        bgcolor = Colors.pink[200];
                        status = true;
                      }
                      // status = false;
                    });
                  },
                  child: Text('click')),
            )
          ],
        ),
      ),
    );
  }
}
