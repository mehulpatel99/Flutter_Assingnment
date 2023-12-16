import 'package:flutter/material.dart';

class my63 extends StatefulWidget {
  const my63({super.key});

  @override
  State<my63> createState() => _my63State();
}

class _my63State extends State<my63> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('snackBar'),
      ),
      body: Center(
        child: Container(
            child: TextButton(
          onPressed: () {
            alert();
          },
          child: Text('Button'),
        )),
      ),
    );
  }

  alert() {
    AlertDialog myalert = AlertDialog(
      title: Text('Show button'),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Positive')));
            },
            child: Text('Positive')),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Negative')));
            },
            child: Text('Negative')),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Neutral')));
            },
            child: Text('Neutral'))
      ],
    );
    showDialog(context: context, builder: (context) => myalert);
  }
}
