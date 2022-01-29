import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/Constant/reusable_textfield.dart';
import 'package:anun_partner/CustomWidgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class DeliverdScreen extends StatefulWidget {
  const DeliverdScreen({Key? key}) : super(key: key);

  @override
  _DeliverdScreenState createState() => _DeliverdScreenState();
}

class _DeliverdScreenState extends State<DeliverdScreen> {
  bool check = false;
  bool status = false;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

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
      body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: check == false
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                           Text(
                            'Order ID : 101',
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
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.green, spreadRadius: 1),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                          const CircleAvatar(
                            radius: 40,
                            backgroundColor: green,
                            child: CircleAvatar(
                              radius: 37,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage('https://www.pngarts.com/files/5/Sadio-Mane-PNG-Download-Image.png'),
                            ),

                          ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Your Rider',style: TextStyle(
                              fontFamily: 'Allerta',
                              fontSize: 18,
                            ),),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Tamal Dev',style: TextStyle(
                                  fontFamily: 'Allerta',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),),
                                Icon(Icons.call),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      MaterialButton(
                        height: 40.0,
                        minWidth: double.infinity,
                        color: green,
                        textColor: black,
                        child: const Text(
                          "Delivered to Rider",
                          style: TextStyle(
                            fontFamily: "Allerta",
                            fontSize: 17,
                          ),
                        ),
                        onPressed: () => {},
                        splashColor: read,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 60,
                        color: green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  _key.currentState!.openDrawer();
                                },
                                icon: Icon(Icons.menu)),
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
          )),
    );
  }
}
