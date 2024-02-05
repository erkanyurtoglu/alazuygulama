import 'package:alazuygulama/anaSyf.dart';
import 'package:alazuygulama/bottomnav.dart';
import 'package:alazuygulama/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Image.asset("assets/images/logo1.png"),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: MyTextField(
                        labeltext: "Email",
                        controller: emailController,
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: MyTextField(
                        labeltext: "Password",
                        controller: passwordController,
                        obscureText: true,
                        isPassword: true,
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    MyButton(
                        text: "LOGIN",
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomPage()));

                          /*FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text)
                  .then((value) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }).onError((error, stackTrace) {
                print("Error ${error.toString()}");
              });*/
                        }),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final Function press;
  const MyButton({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          press();
        },
        child: Container(
          height: 60,
          width: 320,
          decoration: BoxDecoration(
              color: Colors.red[700],
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
