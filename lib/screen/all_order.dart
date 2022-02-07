import 'dart:async';

import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/Constant/reusable_textfield.dart';
import 'package:anun_partner/Constant/text_design.dart';
import 'package:anun_partner/CustomWidgets/custom_drawer.dart';
import 'package:anun_partner/CustomWidgets/custom_widgets.dart';
import 'package:anun_partner/screen/deliveredScreen.dart';
import 'package:anun_partner/screen/ongoing_order_list.dart';
import 'package:anun_partner/screen/order_details.dart';
import 'package:anun_partner/screen/order_ready.dart';
import 'package:anun_partner/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:numberpicker/numberpicker.dart';

enum SingingCharacter { reason1, reason2, reason3, reason4, others }

class AllOrder extends StatefulWidget {
  const AllOrder({Key? key}) : super(key: key);

  @override
  State<AllOrder> createState() => _AllOrderState();
}

class _AllOrderState extends State<AllOrder>
    with SingleTickerProviderStateMixin {
  bool status = false;
  static const countdownDuration = Duration(seconds: 30);
  double value = 0;
  @override
  void initState() {
    startTimer();
    reset();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void reset() {
    if (isCountdown) {
      setState(() {
        duration = countdownDuration;
      });
    } else {
      setState(() {
        duration = const Duration();
      });
    }
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }

  void addTime() {
    final addSeconds = isCountdown ? -1 : 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  SingingCharacter? _character = SingingCharacter.reason1;

  Rejectdialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        String contentText = "Content of Dialog";
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text(
                "Please Select rejection reason",
                style: TextStyle(
                  fontFamily: 'Allerta',
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio<SingingCharacter>(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: SingingCharacter.reason1,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      const Text(
                        'Reason 1',
                        style: TextStyle(
                          fontFamily: 'Allerta',
                        ),
                      ),
                      Row(
                        children: [
                          Radio<SingingCharacter>(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: SingingCharacter.reason2,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                          const Text(
                            'Reason 2',
                            style: TextStyle(
                              fontFamily: 'Allerta',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<SingingCharacter>(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: SingingCharacter.reason3,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      const Text(
                        'Reason 3',
                        style: TextStyle(
                          fontFamily: 'Allerta',
                        ),
                      ),
                      Row(
                        children: [
                          Radio<SingingCharacter>(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: SingingCharacter.reason4,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                          const Text(
                            'Reason 2',
                            style: TextStyle(
                              fontFamily: 'Allerta',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<SingingCharacter>(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: SingingCharacter.others,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      const Text(
                        'Others',
                        style: TextStyle(
                          fontFamily: 'Allerta',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Text(LocaleKeys.chancel.tr()),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Text(LocaleKeys.ok.tr()),
                ),
              ],
            );
          },
        );
      },
    );
  }

  int _currentIntValue = 10;

  Acceptdialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        String contentText = "Content of Dialog";
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text(
                LocaleKeys.required_preparing_time.tr(),
                style: ReTextStyle,
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  NumberPicker(
                    value: _currentIntValue,
                    minValue: 0,
                    maxValue: 100,
                    itemHeight: 50,
                    itemWidth: 50,
                    axis: Axis.horizontal,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: green),
                    ),
                    onChanged: (value) =>
                        setState(() => _currentIntValue = value),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () => setState(() {
                          final newValue = _currentIntValue - 1;
                          _currentIntValue = newValue.clamp(0, 100);
                        }),
                      ),
                      Text(
                        'Current Time: ${_currentIntValue} M',
                        style: ReTextStyle,
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () => setState(() {
                          final newValue = _currentIntValue + 1;
                          _currentIntValue = newValue.clamp(0, 100);
                        }),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Text(LocaleKeys.chancel.tr()),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OrderReady()));
                          });
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

  bool check = false;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: green,
        elevation: 0,
        centerTitle: true,
        title: status == true
            ? Text(
                LocaleKeys.online.tr(),
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Allerta',
                ),
              )
            : Text(
                LocaleKeys.offline.tr(),
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Allerta',
                ),
              ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FlutterSwitch(
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
          ),
        ],
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      //   flexibleSpace: SafeArea(
      //       child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Center(
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Expanded(
      //             child: MaterialButton(
      //               height: double.infinity,
      //               minWidth: double.infinity,
      //               color: check == false ? green : Color(0xFFedf2f8),
      //               textColor: black,
      //               child: const Text(
      //                 "Incoming(3)",
      //                 style: TextStyle(
      //                   fontFamily: "Allerta",
      //                   fontSize: 17,
      //                 ),
      //               ),
      //               onPressed: () {
      //                 setState(() {
      //                   check = false;
      //                 });
      //               },
      //               splashColor: read,
      //             ),
      //           ),
      //           const SizedBox(
      //             width: 5,
      //           ),
      //           Expanded(
      //             child: MaterialButton(
      //               height: double.infinity,
      //               minWidth: double.infinity,
      //               color: check == true ? green : Color(0xFFedf2f8),
      //               textColor: black,
      //               child: const Text(
      //                 "Ongoing(6)",
      //                 style: TextStyle(
      //                   fontFamily: "Allerta",
      //                   fontSize: 17,
      //                 ),
      //               ),
      //               onPressed: () {
      //                 setState(() {
      //                   check = true;
      //                 });
      //               },
      //               splashColor: read,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   )),
      // ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: check == false
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                              color: check == false ? green : Color(0xFFedf2f8),
                              textColor: black,
                              child: Text(
                                "${LocaleKeys.incoming.tr()}(3)",
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
                          Flexible(
                            flex: 1,
                            child: MaterialButton(
                              height: 40,
                              minWidth: double.infinity,
                              color: check == true ? green : Color(0xFFedf2f8),
                              textColor: black,
                              child: Text(
                                "${LocaleKeys.ongoing.tr()}(3)",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${LocaleKeys.order_id.tr()}: 101",
                            style: TextStyle(
                              fontFamily: 'Allerta',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Rejectdialog(context);
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red),
                              ),
                              child: Text(LocaleKeys.reject.tr())),
                        ],
                      ),

                      Container(
                        width: double.infinity,
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Container(
                                      height: 25,
                                      width: 75,
                                      child: const Center(
                                        child: Text(
                                          '3X',
                                          style: TextStyle(
                                              fontFamily: 'Allerta',
                                              color: Colors.black,
                                              fontSize: 17),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.green,
                                              spreadRadius: 1),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  const Text(
                                    'Chicken burger',
                                    style: TextStyle(
                                      fontFamily: 'Allerta',
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            LocaleKeys.specialinstruction.tr(),
                            style:
                                TextStyle(fontFamily: 'Allerta', fontSize: 15),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15),
                        child: const Text(
                          'Extra : Add more masala',
                          style: TextStyle(
                            fontFamily: 'Allerta',
                            fontSize: 17,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.green, spreadRadius: 1),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "${LocaleKeys.total.tr()} : 450 TK",
                            style: const TextStyle(
                              fontFamily: 'Allerta',
                              fontSize: 17,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.green, spreadRadius: 1),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            LocaleKeys.auto_reject_will_be_within.tr(),
                            style: TextStyle(
                              fontFamily: 'Allerta',
                              fontSize: 17,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.green, spreadRadius: 1),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TweenAnimationBuilder(
                          tween: Tween(begin: 0.0, end: 1.0),
                          duration: const Duration(seconds: 30),
                          builder: (context, double value, _) => SizedBox(
                                child: LinearProgressIndicator(
                                  value: value,
                                  backgroundColor: Colors.grey,
                                  color: green,
                                  minHeight: 5,
                                ),
                              )),
                      Container(
                        height: 125,
                        width: double.infinity,
                        child: Center(child: buildTime()),
                      ),
                      MaterialButton(
                        height: 40.0,
                        minWidth: double.infinity,
                        color: green,
                        textColor: black,
                        child: Text(
                          LocaleKeys.accept_order.tr(),
                          style: TextStyle(
                            fontFamily: "Allerta",
                            fontSize: 17,
                          ),
                        ),
                        onPressed: () => {
                          Acceptdialog(context),
                        },
                        splashColor: read,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      // Container(
                      //   height: 60,
                      //   color: green,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       IconButton(
                      //           onPressed: () {
                      //             _key.currentState!.openDrawer();
                      //           },
                      //           icon: Icon(Icons.menu)),
                      //       status == true
                      //           ? const Text(
                      //               'You are Online',
                      //               style: Ktextstyle,
                      //             )
                      //           : const Text('You are Offline',
                      //               style: Ktextstyle),
                      //       Padding(
                      //         padding: const EdgeInsets.only(right: 8),
                      //         child: FlutterSwitch(
                      //           width: 55.0,
                      //           height: 25.0,
                      //           valueFontSize: 12.0,
                      //           toggleSize: 18.0,
                      //           value: status,
                      //           onToggle: (val) {
                      //             setState(() {
                      //               status = val;
                      //             });
                      //           },
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: MaterialButton(
                              height: 50,
                              minWidth: double.infinity,
                              color: check == false ? green : Color(0xFFedf2f8),
                              textColor: black,
                              child:  Text(
                                "${LocaleKeys.incoming.tr()}(5)",
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
                          Flexible(
                            flex: 1,
                            child: MaterialButton(
                              height: 50,
                              minWidth: double.infinity,
                              color: check == true ? green : Color(0xFFedf2f8),
                              textColor: black,
                              child:  Text(
                                "${LocaleKeys.ongoing.tr()}(5)",
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
                      ListView.builder(
                          padding: EdgeInsets.all(10),
                          itemCount: 10,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(color: green, spreadRadius: 2),
                                    ],
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const OrderReady()));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                RichText(
                                                  text:  TextSpan(
                                                    style: const TextStyle(
                                                        fontSize: 14.0,
                                                        color: Colors.black,
                                                        fontFamily: 'Allerta',
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: "${LocaleKeys.order_id.tr()}: "),
                                                      const TextSpan(
                                                          text: 'food12',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Allerta',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal)),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
                                                RichText(
                                                  text:  TextSpan(
                                                    style: const TextStyle(
                                                      fontSize: 14.0,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Allerta',
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              "${LocaleKeys.order_type.tr()} : "),
                                                      const TextSpan(
                                                          text: 'food',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Allerta',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal)),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
                                                RichText(
                                                  text:  TextSpan(
                                                    style: const TextStyle(
                                                      fontSize: 14.0,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Allerta',
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              "Time Remaining : "),
                                                      TextSpan(
                                                          text: "5 ${LocaleKeys.minutes.tr()}",
                                                          style: const TextStyle(
                                                              fontFamily:
                                                                  'Allerta',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal)),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Container(
                                            width: 100,
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Center(
                                                  child: Text("${LocaleKeys.total.tr()} 450 TK")),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: green,
                                                boxShadow: const [
                                                  BoxShadow(
                                                      color: Colors.blue,
                                                      spreadRadius: 1.5),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                )
                              ],
                            );
                          }),
                    ],
                  )),
      ),
    );
  }
}
