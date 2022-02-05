import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/Constant/text_design.dart';
import 'package:flutter/material.dart';

class SmileCartProductList extends StatefulWidget {
  const SmileCartProductList({Key? key}) : super(key: key);

  @override
  _SmileCartProductListState createState() => _SmileCartProductListState();
}

class _SmileCartProductListState extends State<SmileCartProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: green,
        iconTheme: const IconThemeData(color: Colors.black),
        title:const Text(
          'Smile Cart',
          style: TextStyle(color: Colors.black, fontFamily: 'Allerta'),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: const Center(
                        child: Text(
                          'Quantity',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Allerta',
                              fontSize: 20),
                        )),
                    height: 50,
                    color: green,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 50,
                    color: green,
                    child: const Center(
                        child: Text(
                          'Product Information',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Allerta',
                              fontSize: 20),
                        )),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            ListView.builder(
                itemCount: 100,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: const Center(
                                  child: Text(
                                    '3X',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Allerta',
                                        fontSize: 16),
                                  )),
                              height: 50,
                              color: Color(0xFFCDD4EA),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              height: 50,
                              color: Color(0xFFCDD4EA),
                              child: const Center(
                                  child: Text(
                                    'Chicken burger',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Allerta',
                                        fontSize: 16),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
