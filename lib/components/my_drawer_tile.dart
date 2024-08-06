import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  const MyDrawerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Home"),
      leading: Icon(Icons.home),
      onTap: () {},
    );
  }
}
