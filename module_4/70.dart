import 'package:flutter/material.dart';

class my70 extends StatefulWidget {
  const my70({super.key});

  @override
  State<my70> createState() => _my70State();
}

class _my70State extends State<my70> {
  int item = 0;
  onchange(index) {
    setState(() {
      item = index;
    });
  }

  static List<Widget> mylist4 = [

    Image.asset('Assets/image/khushi.jpg'),
    Image.asset('Assets/image/pizza.jpg'),
    Image.asset('Assets/image/bg.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: mylist4.elementAt(item),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.audio_file),label: 'Audio',backgroundColor: Colors.teal),
        BottomNavigationBarItem(icon: Icon(Icons.video_file),label: 'Video',backgroundColor: Colors.teal),
        BottomNavigationBarItem(icon: Icon(Icons.design_services),label: 'Design',backgroundColor: Colors.teal)
      ],
      type: BottomNavigationBarType.shifting,
      onTap: onchange,
      currentIndex: item,
      backgroundColor: Colors.white,
      elevation: 0,
      ),
    );

  }
}
