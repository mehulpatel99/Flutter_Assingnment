import 'package:flutter/material.dart';

class reverse extends StatefulWidget {
  const reverse({super.key});

  @override
  State<reverse> createState() => _reverseState();
}

TextEditingController numController = TextEditingController();
var m;
var s;

class _reverseState extends State<reverse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse number'),
        leading: Icon(Icons.person_4_outlined),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.grey[400]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: numController,
                decoration: InputDecoration(
                    label: Icon(Icons.home_max_sharp),
                    hintText: 'Enter your number for reverse',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      m = int.parse(numController.text.toString());
                      
                       String reversed = m.toString().split('').reversed.join();
                    s = int.parse(reversed);
                     
                      print(s);
                    });
                  },
                  icon: Icon(Icons.ads_click),
                  label: Text('Reverse')),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('$s'),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: '$s',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ],
          ),
        ),
      ),
    );
  }
 
}
