import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/registerpage.dart';
import 'package:twitter_clone/themes/theme_provider.dart';
import 'pages/home_page.dart';
import 'components/my_drawer.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone/pages/login_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
