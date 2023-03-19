import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:help_student/components/textfiled_custom.dart';
import 'package:help_student/screens/forgot_password.dart';

import '../components/button_custom.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
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
                  "Bem vindo de volta! \nFico feliz em vê-lo novamente!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              CustomTextfield(
                myController: _emailController,
                hintText: "Digite seu email",
                isPassword: false
              ),
              CustomTextfield(
                  myController: _passwordController,
                  hintText: "Digite sua senha",
                  isPassword: true
              ),
               Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPassword()));
                    },
                    child: Text(
                      "Esqueceu sua senha?",
                      style: TextStyle(
                        color: Color(0xff6A707C),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              ButtonCustom(
                buttonText: "Entrar",
                buttonColor: Colors.orange,
                textColor: Colors.white,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const Login()));
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height*0.15,
                      color: Colors.grey,
                ),
                    const Text("       Entrar com   "),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height*0.18,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.blue,
                        ),
                          onPressed: (){},
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.google,
                        ),
                        onPressed: (){},
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.apple,
                        ),
                        onPressed: (){},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(48,8,8,8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                     Text(
                      "Esqueceu sua senha?",
                      style: TextStyle(
                        color: Color(0xff1E232C),
                        fontSize: 15,
                      ),
                    ),
                     Text(" Registrar agora",
                       style: TextStyle(
                         color: Color(0xff35C2c1),
                         fontSize: 15,
                       ),
                     ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
