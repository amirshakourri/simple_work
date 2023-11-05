import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/login2_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage2(),
      ),
    );
  }
}
