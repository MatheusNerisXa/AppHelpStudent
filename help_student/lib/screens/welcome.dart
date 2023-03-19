import 'package:flutter/material.dart';
import 'package:help_student/components/button.dart';

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
             Button(
              buttonText: "Entrar",
              buttonColor: Colors.orange,
              textColor: Colors.white,
              onPressed: (){},
            ),
            Button(
              buttonText: "Primeiro Acesso",
              buttonColor: Colors.white,
              textColor: Colors.black,
              onPressed: (){},
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
