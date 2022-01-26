import 'package:anun_partner/Constant/custom_color.dart';
import 'package:flutter/material.dart';

class AllOrder extends StatelessWidget {
  const AllOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
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
                    color: green,
                    textColor: black,
                    child: const Text(
                      "Incoming(3)",
                      style: TextStyle(
                        fontFamily: "Allerta",
                        fontSize: 17,
                      ),
                    ),
                    onPressed: () => {},
                    splashColor: read,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: MaterialButton(
                    height: double.infinity,
                    minWidth: double.infinity,
                    color: Colors.amber,
                    textColor: black,
                    child: const Text(
                      "Ongoing(6)",
                      style: TextStyle(
                        fontFamily: "Allerta",
                        fontSize: 17,
                      ),
                    ),
                    onPressed: () => {},
                    splashColor: read,
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Order ID : 101',
                    style: TextStyle(
                      fontFamily: 'Allerta',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Reject')),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Container(
                              height: 25,
                              width: 75,
                              child: Center(
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
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.green, spreadRadius: 1),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
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
                padding: EdgeInsets.all(15),
                child: Text(
                  'Extra : Add more masala',
                  style: TextStyle(
                    fontFamily: 'Allerta',
                    fontSize: 17,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.green, spreadRadius: 1),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Align(
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
                  boxShadow: [
                    BoxShadow(color: Colors.green, spreadRadius: 1),
                  ],
                ),
              ),
              Container(
                height: 60,
                color: Colors.redAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
