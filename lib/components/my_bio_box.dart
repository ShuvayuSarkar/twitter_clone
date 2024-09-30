import 'package:flutter/material.dart';

//user bio box
//this is a   simple box with text inside

class MyBioBox extends StatelessWidget {
  final String text;

  const MyBioBox({super.key, required this.text});

  //build ui
  @override
  Widget build(BuildContext context) {
    //container
    return Container(
      decoration: BoxDecoration(
        //color
        color: Theme.of(context).colorScheme.secondary,
        //curve corners
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 1,
        ),
      ),
      //padding inside
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),

      //text

      child: Text(
        text.isNotEmpty ? text : "empty bio..",
        style: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
    );
  }
}
