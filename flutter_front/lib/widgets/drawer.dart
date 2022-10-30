
import 'package:flutter/material.dart';
import 'package:flutter_front/views/home_page.dart';
import 'package:flutter_front/views/firstpage.dart';
import 'package:flutter_front/views/account_page.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
      child: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 146, 166, 183),
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                      'P A G E S',
                      style :  TextStyle(fontSize: 35),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'Page 1'
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const FirstPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text (
                  'List users',
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text (
                  'User Account: Login & Register',
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AccountPage()));
                },
              ),
          ],
        ),
      ))
    ));
  }
}