import 'package:flutter/material.dart';
import 'package:flutter_front/services/userServices.dart';

import '../models/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User>? users;
  var isLoaded=false;
  @override
  void initState(){
    super.initState();


    getData();
  }

  getData() async {
    users = await UserServices().getUsers();
    if(users != null){
      setState(() {
        isLoaded=true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users List'), 
      ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: users?.length,
          itemBuilder: (context, index) {
            return Container(
              child: Text(users![index].name),
            );
          },
        ),
        replacement:const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}