import 'dart:ui';

import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/screen/order_details.dart';
import 'package:anun_partner/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: green,
        iconTheme: const IconThemeData(color: Colors.black),
        title:  Text(
          LocaleKeys.orders.tr(),
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Allerta',
          ),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 10,
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetails()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text:  TextSpan(
                                    style:const TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                        fontFamily: 'Allerta',
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(text: "${LocaleKeys.order_id.tr()} : "),
                                     const TextSpan(
                                          text: 'food12',
                                          style: TextStyle(
                                              fontFamily: 'Allerta',
                                              fontWeight: FontWeight.normal)),
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
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Allerta',
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: "${LocaleKeys.order_type.tr()} : "),
                                    const  TextSpan(
                                          text: 'food',
                                          style: TextStyle(
                                              fontFamily: 'Allerta',
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                RichText(
                                  text:  TextSpan(
                                    style:const TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Allerta',
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: "${LocaleKeys.date_time.tr()} : "),
                                     const TextSpan(
                                          text: '12 oct,2021',
                                          style: TextStyle(
                                              fontFamily: 'Allerta',
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 100,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(child: Text("${LocaleKeys.total.tr()} 450 TK")),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: green,
                                boxShadow: const [
                                  BoxShadow(color: Colors.blue, spreadRadius: 1.5),
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
    );
  }
}
