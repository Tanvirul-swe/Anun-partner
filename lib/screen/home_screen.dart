import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/Constant/reusable_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children:[
        Expanded(
            child: InkWell(
              onTap: (){
                print('Clicked');
              },
              child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xFFFCE79E), Color(0xFFFEF6DF)])),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New Order Alart',
                  style: Ktextstyle.copyWith(color: Colors.green),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'You have new order tap screen anywhere',
                  style: TextStyle(
                    fontFamily: 'Allerta',
                  ),
                ),
              ],
          ),
        ),
            )),
        Container(
          height: 60,
          color: green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              status == true
                  ? const Text(
                      'You are Online',
                      style: Ktextstyle,
                    )
                  : const Text('You are Offline', style: Ktextstyle),
              FlutterSwitch(
                width: 55.0,
                height: 25.0,
                valueFontSize: 12.0,
                toggleSize: 18.0,
                value: status,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
