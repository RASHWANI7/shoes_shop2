import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyButtomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      backgroundColor: Colors.grey,
      color: Colors.white,
      activeColor: Colors.white,
      tabBackgroundColor: Color(0xFF414141),
      tabBorderRadius: 50,
      gap: 8,
      onTabChange: (value) => onTabChange!(value),
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'SHOP',
        ),
        GButton(
          icon: Icons.shopping_cart,
          text: 'CART',
        ),
        GButton(
          icon: Icons.account_circle,
          text: 'PROFILE',
        ),
        GButton(
          icon: Icons.settings,
          text: 'SETTINGS',
        ),
      ],
    );
  }
}
