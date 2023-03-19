import 'package:flutter/material.dart';
import 'package:help_student/components/button_custom.dart';

import '../components/textfiled_custom.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_sharp),
                    onPressed:(){
                      Navigator.pop(context);
                    }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Esqueceu sua senha?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Não se preocupe, ocorre a todos nós. Enviaremos um link para redefinir sua senha.",
                    style: TextStyle(
                      color: Color(0xff8391A1),
                      fontSize: 20,
                    ),
              ),
            ),
            CustomTextfield(
              myController: _emailController,
              hintText: "Digite seu email",
              isPassword: false
            ),
            ButtonCustom(
              buttonText: "Enviar código",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(68,8,8,8.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  const Text(
                    "Lembrou sua senha?",
                    style: TextStyle(
                      color: Color(0xff1E232C),
                      fontSize: 15,
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Text(" Conecte-se",
                      style: TextStyle(
                        color: Color(0xff35C2c1),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
