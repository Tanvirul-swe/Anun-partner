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
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.people_alt_outlined,color: Color(0xFFFAC245),),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFFAC245), width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFFAC245), width: 2.0),
                  ),
                  label: Text('Username',style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Allerta',
                  ),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off_outlined,color: Color(0xFFFAC245),),
                  prefixIcon: Icon(Icons.password_outlined,color: Color(0xFFFAC245),),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Color(0xFFFAC245), width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Color(0xFFFAC245), width: 2.0),
                  ),
                  label: Text('Password',style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Allerta',
                  ),),
                ),
              ),
            ],
          ),
          MaterialButton(
            height: 40.0,
            minWidth: double.infinity,
            color: const Color(0xFFFAC245),
            textColor: Colors.black,
            child: Text("Sign In",style: TextStyle(
              fontFamily: "Allerta",
            ),),
            onPressed: () => {},
            splashColor: Colors.redAccent,
          )

        ],
      ),
    ));
  }
}
