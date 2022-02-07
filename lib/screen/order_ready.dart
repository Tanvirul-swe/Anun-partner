import 'dart:async';

import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/Constant/reusable_textfield.dart';
import 'package:anun_partner/CustomWidgets/custom_drawer.dart';
import 'package:anun_partner/CustomWidgets/custom_widgets.dart';
import 'package:anun_partner/screen/deliveredScreen.dart';
import 'package:anun_partner/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class OrderReady extends StatefulWidget {
  const OrderReady({Key? key}) : super(key: key);

  @override
  _OrderReadyState createState() => _OrderReadyState();
}
// Create a key

class _OrderReadyState extends State<OrderReady>
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

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          backgroundColor: green,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            LocaleKeys.order_ready.tr(),
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Allerta',
            ),
          ),
        ),
        drawer: CustomDrawer(),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                  ],
                ),
                const SizedBox(
                  height: 20,
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
                                        color: Colors.green, spreadRadius: 1),
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
                SizedBox(
                  height: 5,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      LocaleKeys.specialinstruction.tr(),
                      style: TextStyle(fontFamily: 'Allerta', fontSize: 15),
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
                  child:  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "${LocaleKeys.total.tr()} : 450 TK",
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
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child:  Align(
                    alignment: Alignment.center,
                    child: Text(
                      LocaleKeys.preparing_time_left.tr(),
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
                  child:  Text(
                    LocaleKeys.order_ready.tr(),
                    style: TextStyle(
                      fontFamily: "Allerta",
                      fontSize: 17,
                    ),
                  ),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                DeliverdScreen())),
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
                //           : const Text('You are Offline', style: Ktextstyle),
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
            ),
          ),
        ));
  }
}
