import 'package:blinkitclone/repository/screens/category/category.dart';
import 'package:blinkitclone/repository/screens/home/homescreen.dart';
import 'package:blinkitclone/repository/screens/print/printScreen.dart';
import 'package:blinkitclone/repository/screens/shop/shopscreen.dart';
import 'package:blinkitclone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

int currentIndex = 0;
List<Widget> pages = [
  Homescreen(),
  Shopscreen(),
  CategoryScreen(),
  Printscreen()
];

class _BottomnavscreenState extends State<Bottomnavscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Uihelper.customImage(
                image: "home.png",
                size: 30,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Uihelper.customImage(image: "bag.png", size: 30),
              label: "Shop"),
          BottomNavigationBarItem(
              icon: Uihelper.customImage(image: "category.png", size: 30),
              label: "Category"),
          BottomNavigationBarItem(
              icon: Uihelper.customImage(
                  image: "print.png",
                  size:
                      30), //for making all nav items into clickable saperately
              label: "Print")
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
