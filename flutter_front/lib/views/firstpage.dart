import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      body: const Center(
        child: Text('FIRST PAGE'),
        ),
      appBar: AppBar(
      title: const Text('Seminari 10 Fluter PAGE1'),
      backgroundColor: Colors.deepPurple[300], 
      ),
    );
  }
}