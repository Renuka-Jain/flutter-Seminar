import 'package:flutter/material.dart';
import 'package:flutter_front/services/userServices.dart';

import '../models/user.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPage();
}

class _AccountPage extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seminari 10 Fluter ACCOUNT'),
        backgroundColor: Colors.deepPurple[300], 
      ),
  );

  }
}