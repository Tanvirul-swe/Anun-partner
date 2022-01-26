import 'dart:async';

import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/Constant/reusable_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class AllOrder extends StatefulWidget {
  const AllOrder({Key? key}) : super(key: key);

  @override
  State<AllOrder> createState() => _AllOrderState();
}

Duration duration = const Duration();
Timer? timer;
bool isCountdown = true;

Widget buildTime() {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  // final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return Row(
    children: [
      // buildTimeCard(time: hours, header: 'HOURS'),
      const SizedBox(
        width: 8,
      ),
      buildTimeCard(time: minutes, header: 'MINUTES',),
      const SizedBox(
        width: 8,
      ),
      buildTimeCard(time: seconds, header: 'SECONDS'),
    ],
  );
}

Widget buildTimeCard({required String time, required String header}) {
  return Center(
    child: Column(
      children: [
        Container(
           width: 65,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: green,
          ),
          child: Text(
            time,
            style: const TextStyle(
              fontFamily: 'Allerta',
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(header,style: TextStyle(fontFamily: 'Allerta'),),
      ],
    ),
  );
}

class _AllOrderState extends State<AllOrder> with SingleTickerProviderStateMixin{
  bool status = false;
  AnimationController? controller;
  Animation<double> ?animation;
  static const countdownDuration = Duration(minutes: 1);
  @override
  void initState() {
    startTimer();
    reset();
    controller = AnimationController(
        duration: const Duration(seconds: 10), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller!)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    if(animation!.value<1.0){
      controller!.repeat();
    }

    super.initState();
  }
  @override
  void dispose() {
    controller!.stop();
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
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     key: _key,
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
                        "Incoming(3)",
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
                        "Ongoing(6)",
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
        )),
      ),
      drawer: Drawer(
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: check == false
                  ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Order ID : 101',
                        style: TextStyle(
                          fontFamily: 'Allerta',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.red),
                          ),
                          child: const Text('Reject')),
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
                    child: const Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Total : 450 TK',
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
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Auto reject will be within',
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
                  SizedBox(
                    height: 15,
                  ),
                  LinearProgressIndicator( value:  animation!.value<1.0?animation!.value:1),
                  Text(animation!.value.toString()),
                  Container(
                    height: 125,
                    width: double.infinity,
                    child: buildTime(),
                  ),
                  MaterialButton(
                    height: 40.0,
                    minWidth: double.infinity,
                    color: green,
                    textColor: black,
                    child: const Text(
                      "Accept Order",
                      style: TextStyle(
                        fontFamily: "Allerta",
                        fontSize: 17,
                      ),
                    ),
                    onPressed: () => {},
                    splashColor: read,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    color: green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){
                          _key.currentState!.openDrawer();
                        }, icon: Icon(Icons.menu)),
                        status == true
                            ? const Text(
                          'You are Online',
                          style: Ktextstyle,
                        )
                            : const Text('You are Offline',
                            style: Ktextstyle),
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
                  ),
                ],
              )
                  : Container(
                child: Text('I am ongoing page'),
              ),
            ),

          ],
        )
      ),
    );
  }
}
