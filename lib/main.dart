import 'package:anun_partner/screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppRoot());
}
class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
