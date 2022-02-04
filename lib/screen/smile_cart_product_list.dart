import 'package:anun_partner/Constant/custom_color.dart';
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
          'Smile Product list',
          style: TextStyle(color: Colors.black, fontFamily: 'Allerta'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListView.builder(
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
          ],
        ),
      )
    );
  }
}
