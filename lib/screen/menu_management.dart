import 'package:anun_partner/Constant/custom_color.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class MenuManagement extends StatefulWidget {
  const MenuManagement({Key? key}) : super(key: key);

  @override
  _MenuManagementState createState() => _MenuManagementState();
}

class _MenuManagementState extends State<MenuManagement> {
  bool status = false;
  bool isActiveSwitched = true;
  bool isInavtiveSwitch = true;
  bool isActive = true;
  List<bool> temvalue = [
    true,
    false,
  ];
  bool _value = false;
  int val = -1;
  SingingCharacter? _character = SingingCharacter.lafayette;
  dialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        String contentText = "Content of Dialog";
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text("Select product inactive duration"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: const Text(
                      'Permanently',
                      style: TextStyle(
                        fontFamily: 'Allerta',
                      ),
                    ),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.lafayette,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Only today',
                      style: TextStyle(
                        fontFamily: 'Allerta',
                      ),
                    ),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.jefferson,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );
      },
    );
  }

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
                        color: isActive == false ? green : Color(0xFFedf2f8),
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
                            isActive = false;
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
                        color: isActive == true ? green : Color(0xFFedf2f8),
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
                            isActive = true;
                          });
                        },
                        splashColor: read,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: isActive == false
          ? ListView.separated(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: Image.asset('Assets/burger.jpg'),
                    title: Text('Chicken Burger'),
                    subtitle: Text('350 TK'),
                    trailing: Switch(
                      value: isActiveSwitched,
                      activeColor: Colors.pink,
                      activeTrackColor: green,
                      onChanged: (value) {
                        setState(() {
                          isActiveSwitched = value;
                        });
                      },
                    ));
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  height: 5,
                  color: green,
                );
              },
            )
          : ListView.separated(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: Image.asset('Assets/burger.jpg'),
                    title: Text('Chicken Burger'),
                    subtitle: Text('350 TK'),
                    trailing: Switch(
                      value: isInavtiveSwitch,
                      activeColor: Colors.pink,
                      activeTrackColor: green,
                      onChanged: (value) {
                        setState(() {
                          dialog(context);
                          isInavtiveSwitch = value;
                        });
                      },
                    ));
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  height: 5,
                  color: green,
                );
              },
            ),
    );
  }
}
