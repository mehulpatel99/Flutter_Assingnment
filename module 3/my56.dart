import 'package:flutter/material.dart';

class my56 extends StatefulWidget {
  const my56({super.key});

  @override
  State<my56> createState() => _my56State();
}

List myImages = ['bg.jpg', 'eagle.png', 'pizza.jpg', 'Flutter.png'];

class _my56State extends State<my56> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Card(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 200,
                child: Image.asset('Assets/image/${myImages[index]}')),
                Text('Images',style: TextStyle(fontSize: 27),),
            ],
          ),
        );
      },
      itemCount: myImages.length,
    ));
  }
}
