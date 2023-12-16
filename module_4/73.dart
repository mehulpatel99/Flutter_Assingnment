import 'package:flutter/material.dart';
import 'package:myproject/module%203/my56.dart';
import 'package:myproject/module_4/71.dart';
import 'package:myproject/widgets_example/insta_page.dart';

class my73 extends StatefulWidget {
  const my73({super.key});

  @override
  State<my73> createState() => _my73State();
}

class _my73State extends State<my73> {
  @override
  void initState() {
    super.initState();
    mysplash();
  }

  mysplash() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => my71()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.teal,
        child: Center(child: Text('This is SplashScreen',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),)),
      )
    );
  }
}
