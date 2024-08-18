import 'package:flutter/material.dart';
import 'package:twitter_clone/components/my_Button.dart';
import 'package:twitter_clone/components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text field controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwCOntroller = TextEditingController();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,

        //BODY
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_open_rounded,
                    size: 72,
                    color: Theme.of(context).colorScheme.primary,
                  ),

                  //welcome back message
                  Text(
                    "Welcome back, you\'ve been missed!",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 25),

                  //email textfield
                  MyTextField(
                    controller: emailController,
                    hintText: "Enter email..",
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  //password textfield
                  MyTextField(
                    controller: pwCOntroller,
                    hintText: "Enter Password",
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  //forgot password

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        )),
                  ),

                  const SizedBox(height: 25),

                  //sign in button
                  MyButton(
                    text: "Login",
                    onTap: () {},
                  ),

                  //not a member, sign up now,
                ],
              ),
            ),
          ),
        ));
  }
}
