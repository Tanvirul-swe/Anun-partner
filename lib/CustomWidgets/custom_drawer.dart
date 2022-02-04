import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/screen/menu_management.dart';
import 'package:anun_partner/screen/orders_list.dart';
import 'package:anun_partner/screen/performance_report.dart';
import 'package:anun_partner/screen/request_to_change.dart';
import 'package:anun_partner/screen/smile_cart_product_list.dart';
import 'package:anun_partner/screen/voucher.dart';
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
              title: const Text('Performance report'),
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
              title: const Text('Menu Control'),
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
              title: const Text('Orders'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'Assets/Icons/tutorial.png',
                width: 30,
              ),
              title: const Text('Tutorial'),
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
              title: const Text('Request changes'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'Assets/Icons/reating.png',
                width: 30,
              ),
              title: const Text('Review response'),
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
              title: const Text('Redeem voucher'),
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
              title: const Text('Smile Cart'),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                'Assets/Icons/chat.png',
                width: 30,
              ),
              title: const Text('Chat with US'),
            ),
          ],
        ),
      ),
    );
  }
}
