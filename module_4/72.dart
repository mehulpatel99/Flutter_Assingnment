import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class my72 extends StatefulWidget {
  const my72({super.key});

  @override
  State<my72> createState() => _my72State();
}

class _my72State extends State<my72> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _requistPhone();
    
  }

  Future<void> _requistPhone() async {
    var status = await Permission.phone.request();
    if (status.isGranted) {
      print('Phone permission Allow');
    } else if (status.isDenied) {
      print('Phone permission denied ');
    } else if (status.isPermanentlyDenied) {
       return myalertdialog();
    }
    return myalertdialog();
  }

  void myalertdialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Permission required'),
            content: Text('This app required phone permission'),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Allow')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Denny'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permission app '),
        leading: Icon(Icons.format_align_right_sharp),
      ),
      body: Center(child: Text('This is permission app')),
    );
  }
}
