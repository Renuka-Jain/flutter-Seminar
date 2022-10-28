
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_front/views/home_page.dart';
import 'package:flutter_front/views/firstpage.dart';
import 'package:flutter_front/views/account_page.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seminari 10 Fluter DRAWER'),
        backgroundColor: Color.fromARGB(255, 141, 159, 240),
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 146, 166, 183),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                      'P A G E S',
                      style :  TextStyle(fontSize: 35),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 1'
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FirstPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text (
                  'List users',
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text (
                  'User Account: Login & Register',
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AccountPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}