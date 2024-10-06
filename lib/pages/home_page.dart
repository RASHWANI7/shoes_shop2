import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoes_shop2/componant/buttom_nav_bar.dart';
import 'package:shoes_shop2/pages/cart_page.dart';
import 'package:shoes_shop2/pages/profile_page.dart';
import 'package:shoes_shop2/pages/settings.dart';
import 'package:shoes_shop2/pages/shop_page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _index_of_the_navigation_bar = 0;

  void navigationbar_index_update(int index) {
    setState(() {
      _index_of_the_navigation_bar = index;
    });
  }

  final List<Widget> _Pages = [
    const Shop_Page(),
    const Cart_Page(),
    const Profile_Page(),
    const Settings_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'NIKE STORE',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),
        ),
        backgroundColor: Colors.grey,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 32,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        width: 280,
        backgroundColor: Color(0xFFFFFFFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DrawerHeader(
                child: Image.asset(
              'images/nike-logo-png-38.png',
            )),
            const Padding(
              padding: EdgeInsets.only(top: 25.0, left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.info,
                    size: 55,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'ABOUT',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25.0, left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    size: 55,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'SHARE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 350.0, left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    size: 55,
                  ),
                  Text(
                    'LOG OUT',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) => navigationbar_index_update(index),
      ),
      body: _Pages[_index_of_the_navigation_bar],
    );
  }
}
