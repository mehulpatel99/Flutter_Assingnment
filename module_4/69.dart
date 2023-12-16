import 'package:flutter/material.dart';
import 'package:myproject/drawer/dashboard_screen.dart';
import 'package:myproject/drawer/drawer_header.dart';

class my69 extends StatefulWidget {
  const my69({super.key});

  @override
  State<my69> createState() => _my69State();
}

enum mygrp { Setting, Profile, Search, Sent, Drafts, AllMail }

var maincontainer;
var currentPage = mygrp.Setting;

class _my69State extends State<my69> {
  @override
  Widget build(BuildContext context) {
    pageSet();
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: maincontainer,
      drawer: Drawer(
          child: Column(
        children: [
          Text('Gmail'),
          mylist(),
        ],
      )),
    );
  }

  Widget mylist() {
    return Material(
      child: Container(
        child: Column(
          children: [
            menu(1, 'Setting', Icons.settings,
                currentPage == mygrp.Setting ? true : false),
            menu(2, "Profile", Icons.person,
                currentPage == mygrp.Profile ? true : false),
                menu(3,'Search', Icons.search, currentPage==mygrp.Search ? true:false),
                 Divider(thickness: 2,),
                Text('All Labels'),
                menu(4, 'Sent', Icons.send, currentPage==mygrp.Sent? true:false),
               
                menu(5, 'Drafts', Icons.drafts, currentPage==mygrp.Drafts ? true:false),
                menu(6, 'All mail', Icons.mail, currentPage==mygrp.AllMail? true:false),
          ],
        ),
      ),
    );
  }

  Widget menu(int id, String name, IconData icon, bool status) {
    return Material(
      child: Container(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            setState(() {
              if (id == 1) {
                currentPage = mygrp.Setting;
              } else if (id == 2) {
                currentPage = mygrp.Profile;
              } else if (id == 3) {
                currentPage = mygrp.Search;
              } else if (id == 4) {
                currentPage = mygrp.Sent;
              } else if (id == 5) {
                currentPage = mygrp.Drafts;
              } else if (id == 6) {
                currentPage = mygrp.AllMail;
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Icon(icon),
                SizedBox(
                  width: 30,
                ),
                Text(name)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void pageSet() {
    if (currentPage == mygrp.Setting) {
      maincontainer = Center(child: Image.asset('Assets/image/mountain.jpg'));
    } else if (currentPage == mygrp.Profile) {
      maincontainer = dashboardscreen();
    }
  }

  Widget mytile(mytext, IconData? icon) {
    return ListTile(
      title: Text(mytext),
      leading: Icon(icon),
    );
  }
}
