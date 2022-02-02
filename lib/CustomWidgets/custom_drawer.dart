
import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/screen/menu_management.dart';
import 'package:anun_partner/screen/orders_list.dart';
import 'package:anun_partner/screen/request_to_change.dart';
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
              onTap: () {},
              leading: Icon(Icons.perm_camera_mic),
              title: const Text('Performance report'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuManagement()));
              },
              leading: Icon(Icons.control_camera),
              title: const Text('Menu Control'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderList()));
              },
              leading: Icon(Icons.opacity_rounded),
              title: const Text('Orders'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.emoji_events_outlined),
              title: const Text('Tutorial'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestToChange()));
              },
              leading: const Icon(Icons.share),
              title: const Text('Request changes'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.reviews),
              title: const Text('Review response'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.chat),
              title: const Text('Chat with US'),
            ),
          ],
        ),
      ),
    );
  }
}
