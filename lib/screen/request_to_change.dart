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
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: green,
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: 'FIRST'),
              Tab(text: 'SECOND',),

            ],
          ),
          title: Text('TABS TITLE TEXT'),
        ),
        body: TabBarView(
          children: [
             RequestPage(),
          RequestList(),
          ],
        ),
      ),
    );
  
  }
}

class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('I am request'),
    );
  }
}

class RequestList extends StatelessWidget {
  const RequestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('I am request list'),
    );
  }
}

