import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class my77 extends StatefulWidget {
  const my77({super.key});

  @override
  State<my77> createState() => _my77State();
}

class _my77State extends State<my77> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                    onPressed: () {
                      launch("tel: 9929403892");
                    },
                    icon: Icon(Icons.call),
                    label: Text('Call')),
              ),
              ElevatedButton.icon(
                  onPressed: () async {
                    final Uri uri = Uri(scheme: "SMS", path: '9929403892');
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('NOT send it')));
                    }
                  },
                  icon: Icon(Icons.sms),
                  label: Text('Sms'))
            ],
          ),
        ),
      ),
    );
  }
}
