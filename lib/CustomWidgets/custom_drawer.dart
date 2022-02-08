import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/Constant/text_design.dart';
import 'package:anun_partner/screen/menu_management.dart';
import 'package:anun_partner/screen/orders_list.dart';
import 'package:anun_partner/screen/performance_report.dart';
import 'package:anun_partner/screen/request_to_change.dart';
import 'package:anun_partner/screen/smile_cart_product_list.dart';
import 'package:anun_partner/screen/voucher.dart';
import 'package:anun_partner/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: green,
                    child: CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Sadio-Mane-PNG-Download-Image.png'),
                    ),
                  ),
                  Text(
                    'Hot and Spicy Sadar Road, Tangile',
                    style: TextStyle(
                      fontFamily: 'Allerta',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            PerformanceReport()));
              },
              leading: Image.asset(
                'Assets/Icons/performance.png',
                width: 30,
              ),
              title:  Text(LocaleKeys.performance_report.tr(),style: ReTextStyle,),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuManagement()));
              },
              leading: Image.asset(
                'Assets/Icons/menucontrol.png',
                width: 30,
              ),
              title:  Text(LocaleKeys.menue_control.tr(),style: ReTextStyle,),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderList()));
              },
              leading: Image.asset(
                'Assets/Icons/order.png',
                width: 30,
              ),
              title:  Text(LocaleKeys.orders.tr(),style: ReTextStyle,),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'Assets/Icons/tutorial.png',
                width: 30,
              ),
              title:  Text(LocaleKeys.tutorial.tr(),style: ReTextStyle,),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RequestToChange()));
              },
              leading: Image.asset(
                'Assets/Icons/request.png',
                width: 30,
              ),
              title:  Text(LocaleKeys.request_change.tr(),style: ReTextStyle,),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'Assets/Icons/reating.png',
                width: 30,
              ),
              title:  Text(LocaleKeys.review.tr(),style: ReTextStyle,),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => VoucherPage()));
              },
              leading: Image.asset(
                'Assets/Icons/coupon.png',
                width: 30,
              ),
              title:  Text(LocaleKeys.redeem_voucher.tr(),style: ReTextStyle,),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SmileCartProductList()));
              },
              leading: Image.asset(
                'Assets/Icons/smilecart.png',
                width: 30,
              ),
              title:  Text(LocaleKeys.smile_cart.tr(),style: ReTextStyle,),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'Assets/Icons/chat.png',
                width: 30,
              ),
              title: const Text('Chat with US',style: ReTextStyle,),
            ),
          ],
        ),
      ),
    );
  }
}
