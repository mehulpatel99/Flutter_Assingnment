import 'package:flutter/material.dart';

class register59 extends StatefulWidget {
  const register59({super.key});

  @override
  State<register59> createState() => _register59State();
}

bool C = false;

class _register59State extends State<register59> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        leading: Icon(Icons.format_indent_increase),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myrgst(context);
          });
        },
        child: Icon(Icons.home),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'Assets/image/register.png',
                ),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 450,
              width: 400,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Register Form',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your name',
                        label: Text('First Name'),
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your email',
                        label: Text('Email'),
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your pass',
                        label: Text('Password'),
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Confirm pass',
                        label: Text('Confirm'),
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('I accept the terms and Condition'),
                      Checkbox(
                          value: C,
                          onChanged: (value) {
                            setState(() {
                              C = value!;
                            });
                          })
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: 300,
                      height: 30,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_right_sharp),
                          label: Text('Register')))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void myrgst(BuildContext context) {
    AlertDialog alert2 = new AlertDialog(
      title: Text('Alert'),
      content: Text('Are you want to exit'),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text('Yes')),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('No')),
      ],
    );
    showDialog(context: context, builder: (context) => alert2);
  }
}
// }
