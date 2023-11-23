import 'package:flutter/material.dart';

class my54 extends StatefulWidget {
  const my54({super.key});

  @override
  State<my54> createState() => _my54State();
}

class _my54State extends State<my54> {
  double count = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Increase'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Increase decrease',
          style: TextStyle(fontSize: count),
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text('+')),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (count > 0) {
                    setState(() {
                      count--;
                    });
                  }
                },
                child: Text('-')),
          ],
        ),
        
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('count : $count'),
        )
      ]),
    );
  }
}
