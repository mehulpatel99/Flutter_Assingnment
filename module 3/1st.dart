import 'package:flutter/material.dart';

class module1 extends StatelessWidget {
  const module1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column module'),
        leading: Icon(Icons.person_2_outlined),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                color: Colors.red,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 220,
                  color: Colors.blue,
                ),
                Container(
                  height: 150,
                  width: 220,
                  color: Colors.blue,
                ),
                
              ],
            ),
            SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 220,
                  color: Colors.blue,
                ),
                Container(
                  height: 150,
                  width: 220,
                  color: const Color.fromARGB(255, 126, 191, 245),
                ),
                
              ],
                     ),
                     SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                  )
                ],
              ),
               SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}