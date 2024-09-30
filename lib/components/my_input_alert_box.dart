import 'package:flutter/material.dart';

/* 

Input alert box

This is an alert dialog box that has a textfield where the user can type in
we will use this oft hings like editing bio, posting  a new message, etc


to use this widget, you need :

-text controller (to access hat the user type)

-hint text (eg "whats on your mind?")

-a function (eg. savebio) 

*/

class MyInputAlertBox extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final void Function()? onPressed;
  final String onPressedText;

  const MyInputAlertBox({
    super.key,
    required this.textController,
    required this.hintText,
    required this.onPressed,
    required this.onPressedText,
  });

  //build ui
  @override
  Widget build(BuildContext context) {
    //Alert Dialog
    return AlertDialog(
        //curve corners
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),

        //Color
        backgroundColor: Theme.of(context).colorScheme.surface,

        //textfield(user types here)
        content: TextField(
          controller: textController,

          //lets limit the max charahters
          maxLength: 140,
          maxLines: 3,
          onChanged: (text) {
            //this will be called every time user types
          },
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.tertiary),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
            hintText: hintText,
          ),
        ));
  }
}
