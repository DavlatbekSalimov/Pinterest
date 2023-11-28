import 'package:flutter/material.dart';
import 'package:pinterest/HomeScrean/homePages.dart';
import 'package:pinterest/ProfilPage/profil.dart';
import 'package:pinterest/SearchPage/searchPage.dart';

class NavigatorBarr extends StatefulWidget {
  const NavigatorBarr({super.key});

  @override
  State<NavigatorBarr> createState() => _NavigatorBarrState();
}

class _NavigatorBarrState extends State<NavigatorBarr> {
  int count = 0;
  void onTapp(int index) {
    setState(() {
      count = index;
    });
  }

  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    Text("serach"),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(count),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.indigo,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
              backgroundColor: Colors.amberAccent),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
        currentIndex: count,
        onTap: onTapp,
      ),
    );
  }
}
