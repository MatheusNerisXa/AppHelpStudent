import 'package:flutter/material.dart';
import 'package:help_student/components/button_custom.dart';
import 'package:help_student/screens/login.dart';
import 'package:help_student/screens/register.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        // decoration: BoxDecoration(
        //   image: const DecorationImage(
        //     image: (AssetImage("assets/fundo.png"))
        //   )
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
           // const SizedBox(
           //   height: 130,
           //    width: 180,
           //    child: Image(
           //        image: AssetImage("assets/logo.png"),
           //        fit: BoxFit.cover),
           //  ),
            const SizedBox(
               height: 40
             ),
            ButtonCustom(
              buttonText: "Entrar",
              buttonColor: Colors.orange,
              textColor: Colors.white,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => const Login()));
              },
            ),
            ButtonCustom(
              buttonText: "Primeiro Acesso",
              buttonColor: Colors.white,
              textColor: Colors.black,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const Register()));
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
