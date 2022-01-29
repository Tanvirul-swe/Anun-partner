import 'package:anun_partner/Constant/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MenuManagement extends StatefulWidget {
  const MenuManagement({Key? key}) : super(key: key);

  @override
  _MenuManagementState createState() => _MenuManagementState();
}

class _MenuManagementState extends State<MenuManagement> {

  bool check = false;
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: MaterialButton(
                          height: double.infinity,
                          minWidth: double.infinity,
                          color: check == false ? green : Color(0xFFedf2f8),
                          textColor: black,
                          child: const Text(
                            "Active Items",
                            style: TextStyle(
                              fontFamily: "Allerta",
                              fontSize: 17,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              check = false;
                            });
                          },
                          splashColor: read,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: double.infinity,
                          minWidth: double.infinity,
                          color: check == true ? green : Color(0xFFedf2f8),
                          textColor: black,
                          child: const Text(
                            "Inactive Items",
                            style: TextStyle(
                              fontFamily: "Allerta",
                              fontSize: 17,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              check = true;
                            });
                          },
                          splashColor: read,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),),
      ),
       body: ListView.builder(
           itemCount: 10,
           itemBuilder: (BuildContext context, int index){
         return ListTile(
           leading: Image.asset('Assets/burger.jpg'),
           title: Text('Chicken Burger'),
           subtitle: Text('350 TK'),
           trailing: FlutterSwitch(
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
         );
       }),
    );
  }
}
