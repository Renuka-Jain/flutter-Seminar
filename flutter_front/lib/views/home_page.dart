import 'package:flutter/material.dart';
import 'package:flutter_front/services/userServices.dart';
import 'package:flutter_front/widgets/nav_bar.dart';

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
      drawer: const DrawerScreen(),
      appBar: AppBar(
        title: const Text('Fluterrr'), 
      ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: users?.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(users![index].name),
                  subtitle: Text(users![index].email),
                ),
                const Divider()
              ],
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