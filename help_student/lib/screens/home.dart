import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:help_student/screens/welcome.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home"
        ),
      ),
      body: Column(
        children: [
          Text("Tela inicial"),
          ElevatedButton(onPressed: () async{
            await FirebaseAuth.instance.signOut();
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Welcome();
            }));
          }, child: Text("Sair"))
        ],
      ),
    );
  }
}
