import 'package:alazuygulama/anaSyf.dart';
import 'package:alazuygulama/profil.dart';
import 'package:alazuygulama/sepet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomNAvigatorBarState();
}

class _BottomNAvigatorBarState extends State<BottomPage> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late HomePage homepage;
  late CartPage cartPage;
  late ProfilePage profilePage;

  @override
  void initState() {
    homepage = HomePage();
    cartPage = CartPage();
    profilePage = ProfilePage();
    pages = [homepage, cartPage, profilePage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 55,
          backgroundColor: Colors.white,
          color: Colors.red,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
          ]),
      body: pages[currentTabIndex],
    );
  }
}
