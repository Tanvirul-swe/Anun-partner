import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/Constant/reusable_textfield.dart';
import 'package:anun_partner/screen/home_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'Assets/logo.png',
            width: 100,
            height: 100,
          ),
          Column(
            children: const [
              TextField(
                decoration: UsernameTextFieldDecoration,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: PasswordTextFieldDecoration,
              ),
            ],
          ),
          MaterialButton(
            height: 40.0,
            minWidth: double.infinity,
            color: green,
            textColor: black,
            child: const Text(
              "Sign In",
              style: TextStyle(
                fontFamily: "Allerta",
                fontSize: 17,
              ),
            ),
            onPressed: () => {
              Navigator.push( context, MaterialPageRoute(builder: (context)=>const Home()))
            },
            splashColor: read,
          ),

        ],
      ),
    ));
  }
}
