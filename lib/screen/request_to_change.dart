import 'package:anun_partner/Constant/custom_color.dart';
import 'package:flutter/material.dart';

class RequestToChange extends StatefulWidget {
  const RequestToChange({Key? key}) : super(key: key);

  @override
  _RequestToChangeState createState() => _RequestToChangeState();
}

class _RequestToChangeState extends State<RequestToChange> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: green,
          bottom: const TabBar(
            indicatorColor: Colors.black,
            indicatorWeight: 3,
            labelStyle: TextStyle(
              fontFamily: 'Allerta',
            ),
            labelColor: Colors.black,
            tabs: [
              Tab(text: 'Request'),
              Tab(text: 'Request List'),
            ],
          ),
          title: const Text(
            'Request for Change',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Allerta',
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            RequestPage(),
            RequestList(),
          ],
        ),
      ),
    );
  }
}

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("Name correction"), value: "name"),
      const DropdownMenuItem(child: Text("Menu correction"), value: "menue"),
      const DropdownMenuItem(child: Text("Price correction"), value: "price"),
      const DropdownMenuItem(
          child: Text("Offers correction"), value: "England"),
      const DropdownMenuItem(child: Text("Others"), value: "othes"),
    ];
    return menuItems;
  }

  String selectedValue = "name";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Category',
              style: TextStyle(
                fontFamily: 'Allerta',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: green, width: 2),
                    borderRadius: BorderRadius.circular(5),
                  ),

                  // filled: true,
                  // fillColor: Colors.blueAccent,
                ),
                // dropdownColor: Colors.blueAccent,
                value: selectedValue,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: dropdownItems),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Describe your problem',
                  filled: true,
                  fillColor: Color(0xFFF2F2F2),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(width: 2, color: green),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(width: 2, color: green),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 50.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: green, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              height: 40.0,
              minWidth: double.infinity,
              color: green,
              textColor: black,
              child: const Text(
                "Request for Change",
                style: TextStyle(
                  fontFamily: "Allerta",
                  fontSize: 17,
                ),
              ),
              onPressed: () => {},
              splashColor: read,
            ),
          ],
        ),
      ),
    ));
  }
}

class RequestList extends StatelessWidget {
  const RequestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(8)),
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
                    'Request ID',
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
                flex: 1,
                child: Container(
                  height: 50,
                  color: green,
                  child: const Center(
                      child: Text(
                    'Date & Time',
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
              Flexible(
                flex: 1,
                child: Container(
                  height: 50,
                  color: green,
                  child: const Center(
                      child: Text(
                    'Status',
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
                              'food123',
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
                          flex: 1,
                          child: Container(
                            height: 50,
                            color: Color(0xFFCDD4EA),
                            child: const Center(
                                child: Text(
                              '25-03-2000',
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
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 50,
                            color: Color(0xFFCDD4EA),
                            child: const Center(
                                child: Text(
                              'Pending',
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
    ));
  }
}