import 'package:flutter/material.dart';
import 'package:twitter_clone/components/my_drawer.dart';
import 'package:twitter_clone/components/my_input_alert_box.dart';

//main page of the app

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text Controllers
  final TextEditingController _messageController = TextEditingController();

  //show post message dialog box
  void _openPostMessageBox() {
    showDialog(
      context: context,
      builder: (context) => MyInputAlertBox(
          textController: _messageController,
          hintText: "What's on your mind",
          onPressed: () {},
          onPressedText: "Post"),
    );
  }

  //build ui
  @override
  Widget build(BuildContext context) {
    //scaffold
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        drawer: MyDrawer(),
        appBar: AppBar(
          title: const Text("H O M E"),
          foregroundColor: Theme.of(context).colorScheme.primary,
        ),

        //Floating action button

        floatingActionButton: FloatingActionButton(
          onPressed: _openPostMessage,
          child: const Icon(Icons.add),
        ));
  }
}
