import 'package:flutter/material.dart';
// import 'package:mysqflite/interview_practise/post_api.dart';
import 'package:mysqflite/regester.dart';

import 'get_Screen.dart';
// import 'MyApi/myapi.dart';
// import 'MyApi/postApi.dart';
import 'interview_practise/getapi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RegesterScreen (),
    );
  }
}


