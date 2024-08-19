import 'package:flutter/material.dart';
import 'package:twitter_clone/components/my_Button.dart';
import 'package:twitter_clone/components/my_text_field.dart';

/*REGISTER PAGE

ON THIS PAGE NEW USER CAN create an account
*/

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text field controller
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwController = TextEditingController();
  final TextEditingController confirmPwcontroller = TextEditingController();

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

                  const SizedBox(height: 25),

                  //create an account message
                  Text(
                    "Create an account for you",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 25),

                  //name textfield
                  MyTextField(
                    controller: nameController,
                    hintText: "Enter name",
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  //email textfield
                  MyTextField(
                    controller: emailController,
                    hintText: "Enter name",
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  //password textfield
                  MyTextField(
                    controller: pwController,
                    hintText: "Enter password",
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  //confirm Password textfield
                  MyTextField(
                    controller: pwController,
                    hintText: "confirm password",
                    obscureText: false,
                  ),

                  const SizedBox(height: 25),

                  //sign up button
                  MyButton(
                    text: "Register",
                    onTap: () {},
                  ),

                  //already a member? login here.
                  const SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a Member?",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),

                      const SizedBox(width: 5),

                      //user can tap on this to go to register page
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "login now",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  //bottom links
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Terms of Service",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
