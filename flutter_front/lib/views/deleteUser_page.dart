import 'package:flutter/material.dart';

import 'package:flutter_front/services/userServices.dart';

import '../models/user.dart';

class DeleteUser extends StatefulWidget {
  const DeleteUser({super.key});

  @override
  State<DeleteUser> createState() => _DeleteUser();
}

class _DeleteUser extends State<DeleteUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seminari 10 Fluter DELETEUSER'),
        backgroundColor: Colors.deepPurple[300], 
      ),
  );

  }
}