import 'package:alazuygulama/anaSyf.dart';
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
      backgroundColor: Colors.black,
      body: SafeArea(child: 
      SingleChildScrollView( 
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset("assets/images/logo1.png"
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.red[900]
              ),
              child: Column(
                children: [
                  Container(
                    color: Colors.red[900],
                  ),
                  const 
                  SizedBox(
                    height: 40,
                  ),
                Padding(padding: EdgeInsets.all(10.0),
                child: MyTextField(labeltext: "Email", 
                controller: emailController, 
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.grey[900],
                ),),
                ),
                Padding(padding: EdgeInsets.all(10.0),
                child: MyTextField(labeltext: "Password", 
                controller: passwordController, 
                obscureText: true,
                isPassword: true,
                prefixIcon: Icon(
                  Icons.key,
                  color: Colors.grey[900],
                ),),
                ),
                SizedBox(height: 30),
                MyButton(text: "LOGIN", press: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));

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
                Container(height:160,color: Colors.red[900],)
                ],
              ),
            )
          ],
        ),
      )
      ),
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
          width: 500,
          decoration: BoxDecoration(
              color: Colors.white),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: Colors.red[900], fontSize: 20),
            ),
          ),
));
}
}
