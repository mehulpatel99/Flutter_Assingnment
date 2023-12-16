import 'package:flutter/material.dart';

class my78 extends StatefulWidget {
  const my78({super.key});

  @override
  State<my78> createState() => _my78State();
}

class _my78State extends State<my78> {
  List mylist = [];
  String? name;
  TextEditingController namecon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: namecon,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  name = namecon.text.toString();
                  mylist.add(name);
                });
              },
              child: Text('Submit'))
        ],
      ),
      body: ListView.builder(
          itemCount: mylist.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('${mylist[index]}'),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            mylist.removeAt(index);
                          });
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
