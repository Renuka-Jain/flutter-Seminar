import 'package:flutter/material.dart';
import 'package:flutter_front/services/userServices.dart';

import '../models/user.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPage();
}

class _AccountPage extends State<AccountPage> {
  late String name;
  late String password;
  late String mail;

  GlobalKey formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seminari 10 Fluter REGISTER'),
        backgroundColor: Colors.deepPurple[300], 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Name"),
                onSaved: (value){
                  name = value!;
                },
              ),
              TextFormField(
                decoration : InputDecoration (labelText: "password"),
                onSaved: (value){
                 password = value!;
                },
              ),
              TextFormField(
                decoration : InputDecoration (labelText: "mail"),
                onSaved: (value){
                  mail = value!;
                },
              ),
            FloatingActionButton.small(
              onPressed: () {
                //funció per registrar
              },
              backgroundColor: Color.fromARGB(255, 9, 51, 85),
              tooltip: 'Send',
              child: const Icon (Icons.navigation),
            ),
            ],
            //FloatingActionButtonLocation.endFloat,
          ),
        ),
      ),
  );

  }
}