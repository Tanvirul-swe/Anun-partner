import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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

  VoucherDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: Color(0xFFFFE599),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Voucher Balance'),
                  Text(
                    '500 Tk',
                    style: TextStyle(
                        fontFamily: 'Allerta',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ));
        });
  }

  RedeemDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color(0xFFFFE599),
            title:  Text(
              LocaleKeys.do_you_agree_redeem_now.tr(),
              style: TextStyle(
                fontFamily: 'Allerta',
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child:  Text(
                    LocaleKeys.ok.tr(),
                    style: TextStyle(color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child:  Text(
                    LocaleKeys.chancel.tr(),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  )),
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
        title:  Text(
          LocaleKeys.redeem_voucher.tr(),
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Allerta',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                LocaleKeys.check_voucher_balance.tr(),
                style: TextStyle(fontFamily: 'Allerta', fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
               TextField(
                  decoration: InputDecoration(
                hintText: LocaleKeys.enter_customer_number.tr(),
                filled: true,
                fillColor: Color(0xFFF2F2F2),
                focusedBorder:const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(width: 2, color: green),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(width: 2, color: green),
                ),
              )),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                height: 40.0,
                minWidth: double.infinity,
                color: green,
                textColor: black,
                child:  Text(
                  LocaleKeys.check.tr(),
                  style: TextStyle(
                    fontFamily: "Allerta",
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                  VoucherDialog(context);
                },
                splashColor: read,
              ),
              const SizedBox(
                height: 25,
              ),
               Text(
                LocaleKeys.lets_redeem_voucher.tr(),
                style: const TextStyle(
                  fontSize: 17,
                  fontFamily: 'Allerta',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               TextField(
                  decoration: InputDecoration(
                hintText: LocaleKeys.mobile_number.tr(),
                filled: true,
                fillColor: Color(0xFFF2F2F2),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(width: 2, color: green),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(width: 2, color: green),
                ),
              )),
              SizedBox(
                height: 10,
              ),
               TextField(
                  decoration: InputDecoration(
                hintText: LocaleKeys.voucher_secret_code.tr(),
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
              )),
              SizedBox(
                height: 10,
              ),
               TextField(
                  decoration: InputDecoration(
                hintText: LocaleKeys.product_price.tr(),
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
              )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Text(
                    LocaleKeys.received_extra_money.tr(),
                    style:const TextStyle(
                      fontFamily: 'Allerta',
                      fontSize: 17,
                    ),
                  ),
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
              status == true
                  ?  TextField(
                      decoration: InputDecoration(
                      hintText: LocaleKeys.enter_extra_cash_amount.tr(),
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
                    ))
                  : Container(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                height: 40.0,
                minWidth: double.infinity,
                color: green,
                textColor: black,
                child: Text(
                  LocaleKeys.redeem_now.tr(),
                  style: const TextStyle(
                    fontFamily: "Allerta",
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
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
