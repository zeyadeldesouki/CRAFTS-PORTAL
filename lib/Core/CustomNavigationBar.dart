import 'package:craftsportal/Features/HomeView/Presentation/Views/Myaccount.dart';
import 'package:craftsportal/Features/SearchView/Presentation/SearchView.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
  });
  static int currentIndex = 0;

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        height: 50,
        onTap: (value) {
          setState(() {
            CustomNavigationBar.currentIndex = value;
          });
          if (value == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Searchview();
            }));
          }
          if (value == 2) {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Myaccount();
            }));
          }
        },
        items: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.person, size: 30),
        ]);
  }
}
