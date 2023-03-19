import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:help_student/services/filebase_auth_service.dart';

import '../components/button_custom.dart';
import '../components/textfiled_custom.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usenameController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                    "Olá! Registre-se para começar!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                CustomTextfield(
                    myController: _usenameController,
                    hintText: "Nome",
                    isPassword: false
                ),
                CustomTextfield(
                    myController: _emailController,
                    hintText: "Email",
                    isPassword: false
                ),
                CustomTextfield(
                    myController: _passwordController,
                    hintText: "Senha",
                    isPassword: true
                ),
                CustomTextfield(
                    myController: _confirmPasswordController,
                    hintText: "Confirme sua senha",
                    isPassword: true
                ),
                ButtonCustom(
                  buttonText: "Salvar",
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () async {
                    try{
                      await FirebaseAuthService().signup(
                          _emailController.text.trim(),
                          _passwordController.text.trim());
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                    } on FirebaseException catch (e){
                        print(e.message);
                    }
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
                      const Text("        Registrar com  "),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.height*0.16,
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
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(48,8,8,8.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      const Text(
                        "Já possuí uma conta?",
                        style: TextStyle(
                          color: Color(0xff1E232C),
                          fontSize: 15,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const Login()));
                        },
                        child: Text(" Entre agora",
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
        ),
      ),
    );
  }
}
