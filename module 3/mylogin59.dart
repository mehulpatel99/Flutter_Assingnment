import 'package:flutter/material.dart';
import 'package:myproject/module%203/myregister59.dart';

class login59 extends StatefulWidget {
  const login59({super.key});

  @override
  State<login59> createState() => _login59State();
}

TextEditingController emailController = TextEditingController();
TextEditingController passController = TextEditingController();

class _login59State extends State<login59> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Assets/image/login.png'), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 400,
              width: 350,
              // color: Colors.grey[200],
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('Assets/image/profile.png'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: 'Enter your email',
                          label: Text('Email id'),
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: passController,
                      decoration: InputDecoration(
                          hintText: 'Enter your pass',
                          label: Text('Password'),
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 150,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('Login'))),
                      TextButton(
                          onPressed: () {}, child: Text('Forgot Password?'))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: 200,
                      child: OutlinedButton.icon(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => register59()));
                            });
                          },
                          icon: Icon(Icons.app_registration_rounded),
                          label: Text('Register')))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
