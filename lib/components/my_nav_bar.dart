import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key, required this.onTabChange});

  final void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey[700],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        tabBorderRadius: 30,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(icon: Icons.home, text: "Home"),
          GButton(icon: Icons.shopping_bag_rounded, text: 'cart')
        ],
      ),
    );
  }
}
