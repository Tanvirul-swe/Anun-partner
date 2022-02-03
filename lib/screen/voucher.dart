import 'package:anun_partner/Constant/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({Key? key}) : super(key: key);

  @override
  _VoucherPageState createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  bool status = false;


VoucherDialog(BuildContext context)async{
  return showDialog(context: context, builder: (context){
    return  AlertDialog(
      backgroundColor: Color(0xFFFFE599),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Voucher Balance'),
          Text('500 Tk',style: TextStyle(
            fontFamily: 'Allerta',
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
        ],
      )
    );
  });
}
  RedeemDialog(BuildContext context)async{
    return showDialog(context: context, builder: (context){
      return  AlertDialog(
          backgroundColor: Color(0xFFFFE599),
          title: const Text('Do you agree to redeem now?',style: TextStyle(
            fontFamily: 'Allerta',
          ),),
        actions: [
          TextButton(onPressed: (){}, child: Text('Yes',style: TextStyle(
            color: Colors.black
          ),)),
          TextButton(onPressed: (){}, child: Text('No',style: TextStyle(
            color: Colors.black,
          ),)),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: green,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Redeem voucher',style: TextStyle(
          color: Colors.black,
          fontFamily: 'Allerta',
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:  [
              const Text('Check voucher balance',style:  TextStyle(
                fontFamily: 'Allerta',
                fontSize: 17
              ),),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter customer mobile number',
                  filled: true,
                  fillColor: Color(0xFFF2F2F2),
                  focusedBorder:   OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(width: 2, color: green),
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide:  BorderSide(width: 2, color: green),
                  ),


              )
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                height: 40.0,
                minWidth: double.infinity,
                color: green,
                textColor: black,
                child: const Text(
                  "Check",
                  style: TextStyle(
                    fontFamily: "Allerta",
                    fontSize: 17,
                  ),
                ),
                onPressed: (){
                  VoucherDialog(context);
                },
                splashColor: read,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text('Lets redeem a voucher',style: TextStyle(
                fontSize: 17,
                fontFamily: 'Allerta',
              ),),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                  decoration: InputDecoration(
                    hintText: 'Mobile number',
                    filled: true,
                    fillColor: Color(0xFFF2F2F2),
                    focusedBorder:   OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(width: 2, color: green),
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:  BorderSide(width: 2, color: green),
                    ),


                  )
              ),
              SizedBox(
                height: 10,
              ),
              const TextField(
                  decoration: InputDecoration(
                    hintText: 'Voucher secret code',
                    filled: true,
                    fillColor: Color(0xFFF2F2F2),
                    focusedBorder:   OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(width: 2, color: green),
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:  BorderSide(width: 2, color: green),
                    ),


                  )
              ),
              SizedBox(
                height: 10,
              ),
              const TextField(
                  decoration: InputDecoration(
                    hintText: 'Product Price',
                    filled: true,
                    fillColor: Color(0xFFF2F2F2),
                    focusedBorder:   OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(width: 2, color: green),
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:  BorderSide(width: 2, color: green),
                    ),


                  )
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  const Text('Received Extra cash?',style: TextStyle(
                    fontFamily: 'Allerta',
                    fontSize: 17,
                  ),),
                  FlutterSwitch(
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              status==true? const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter extra cash amount',
                    filled: true,
                    fillColor: Color(0xFFF2F2F2),
                    focusedBorder:   OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(width: 2, color: green),
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:  BorderSide(width: 2, color: green),
                    ),


                  )
              ):Container(),
              const SizedBox(
                height: 10,
              ),
               status==true? const TextField(
                  decoration: InputDecoration(
                    hintText: 'Voucher secret code',
                    filled: true,
                    fillColor: Color(0xFFF2F2F2),
                    focusedBorder:   OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(width: 2, color: green),
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:  BorderSide(width: 2, color: green),
                    ),


                  )
              ):Container(),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                height: 40.0,
                minWidth: double.infinity,
                color: green,
                textColor: black,
                child: const Text(
                  "Redeem Now",
                  style: TextStyle(
                    fontFamily: "Allerta",
                    fontSize: 17,
                  ),
                ),
                onPressed: (){
                  RedeemDialog(context);
                },
                splashColor: read,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
