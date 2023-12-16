import 'package:flutter/material.dart';
import 'package:myproject/drawer/drawer_header.dart';
import 'package:myproject/practice/Navigation_Drawer/header.dart';

class my71 extends StatefulWidget {
  const my71({super.key});

  @override
  State<my71> createState() => _my71State();
}

class _my71State extends State<my71> {
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
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: mylist4.elementAt(item),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.audio_file),
              label: 'Audio',
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_file),
              label: 'Video',
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.design_services),
              label: 'Design',
              backgroundColor: Colors.teal)
        ],
        type: BottomNavigationBarType.shifting,
        onTap: onchange,
        currentIndex: item,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.maxFinite,
              color: Colors.teal,
              child: Center(
                child: ListTile(
                  title: Text('Mehul'),
                  subtitle: Text('Mehul123@gmial.com'),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.search),
              title: Text('Search'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            )
          ],
        ),
      ),
    );
  }
}
