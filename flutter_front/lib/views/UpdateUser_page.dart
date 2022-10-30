import 'package:flutter/material.dart';

import 'package:flutter_front/services/userServices.dart';

import '../models/user.dart';

class UpdateUser extends StatefulWidget {
  const UpdateUser({super.key});

  @override
  State<UpdateUser> createState() => _UpdateUser();
}

class _UpdateUser extends State<UpdateUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seminari 10 Fluter UpdateUSER'),
        backgroundColor: Colors.deepPurple[300], 
        
      ),
  );

  }
}