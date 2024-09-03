import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone/models/user.dart';
import 'package:twitter_clone/services/auth/auth_service.dart';
import 'package:twitter_clone/services/auth/database/database_provider.dart';

//profile page

class ProfilePage extends StatefulWidget {
  //user id
  final String uid;

  const ProfilePage({
    super.key,
    required this.uid,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //providers
  late final databaseProvider =
      Provider.of<DatbaseProvider>(context, listen: false);

  //user info
  UserProfile? user;
  String currentUserId = AuthService().getCurrentUid();

  //loading..
  bool _isLoading = true;

  //on startup,
  @override
  void initState() {
    super.initState();

    loadUser();
  }

  Future<void> loadUser() async {
    //get the user profile info
    user = await databaseProvider.userProfile(widget.uid);

    setState(() {
      _isLoading = false;
    });
  }

  //build ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //app bar
        appBar: AppBar(
          title: Text("P R O F I L E"),
        ),

        //body
        body: ListView(children: []));
  }
}
