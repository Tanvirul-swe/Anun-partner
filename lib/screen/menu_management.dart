import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/Constant/text_design.dart';
import 'package:anun_partner/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

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
              title:  Text(LocaleKeys.select_inactive_duration.tr()),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio<SingingCharacter>(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                       Text(
                       LocaleKeys.permanently.tr(),
                        style: TextStyle(
                          fontFamily: 'Allerta',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<SingingCharacter>(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                       Text(
                        LocaleKeys.only_for_today.tr(),
                        style: TextStyle(
                          fontFamily: 'Allerta',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text(LocaleKeys.chancel.tr()),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text(LocaleKeys.ok.tr()),
                      ),
                    ],
                  )
                ],
              ),
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
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: green,
        elevation: 0,
        centerTitle: false,
        title: Text(LocaleKeys.menue_control.tr(),style: ReTextStyle,),
      ),

      body: isActive == false
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: MaterialButton(
                          height: 40,
                          minWidth: double.infinity,
                          color: isActive == false ? green : Color(0xFFedf2f8),
                          textColor: black,
                          child:  Text(
                            "${LocaleKeys.active_items.tr()}(5)",
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
                      Flexible(
                        flex: 1,
                        child: MaterialButton(
                          height: 40,
                          minWidth: double.infinity,
                          color: isActive == true ? green : Color(0xFFedf2f8),
                          textColor: black,
                          child:  Text(
                            "${LocaleKeys.inactive_items.tr()}(6)",
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
                  ListView.separated(
                    itemCount: 10,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          leading: Image.asset('Assets/burger.jpg'),
                          title: Text('Chicken Burger'),
                          subtitle: Text('350 TK'),
                          trailing: Switch(
                            value: isActiveSwitched,
                            activeColor: green,
                            activeTrackColor: Colors.black,
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
                ],
              ),
            )
          : SingleChildScrollView(
            child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: MaterialButton(
                          height: 40,
                          minWidth: double.infinity,
                          color: isActive == false ? green : Color(0xFFedf2f8),
                          textColor: black,
                          child:  Text(
                            "${LocaleKeys.active_items.tr()}(6)",
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
                      Flexible(
                        flex: 1,
                        child: MaterialButton(
                          height: 40,
                          minWidth: double.infinity,
                          color: isActive == true ? green : Color(0xFFedf2f8),
                          textColor: black,
                          child:  Text(
                            "${LocaleKeys.inactive_items.tr()}(6)",
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
                  ListView.separated(
                    itemCount: 10,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          leading: Image.asset('Assets/burger.jpg'),
                          title: Text('Chicken Burger'),
                          subtitle: Text('350 TK'),
                          trailing: Switch(
                            value: isInavtiveSwitch,
                            activeColor: green,
                            activeTrackColor: Colors.black,
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
                ],
              ),
          ),
    );
  }
}
