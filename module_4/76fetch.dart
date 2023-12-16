import 'package:flutter/material.dart';

class my762 extends StatelessWidget {
  var Total;
  

  my762({@required this.Total});
  
  @override
  Widget build(BuildContext context) {
    // var total = num1 + num2;
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 400,
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your sum is ...'),
              Text(
                Total,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
