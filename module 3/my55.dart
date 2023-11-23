import 'package:flutter/material.dart';

class my55 extends StatefulWidget {
  const my55({super.key});

  @override
  State<my55> createState() => _my55State();
}

class _my55State extends State<my55> {
  bool f = false;
  bool c = false;
  bool j = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dishplay checkbox'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('For Flutter '),
              Checkbox(
                  value: this.f,
                  onChanged: (value) {
                    setState(() {
                      f = value!;
                    });
                  }),
            ],
          ),
          if (f) mymeth(context),
        ],
      ),
    );
  }

  mymeth(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.grey,
      child: Center(child: Text('This is flutter Box',style: TextStyle(fontSize: 20),)),
    );
  }
}
