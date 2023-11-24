import 'package:flutter/material.dart';

class NavRail extends StatefulWidget {
  const NavRail({super.key});

  @override
  State<NavRail> createState() => _NavRailState();
}

class _NavRailState extends State<NavRail> {
  int curretindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavRail"),
      ),
      body: NavigationRail(
        destinations: const [
          NavigationRailDestination(
            icon: Icon(Icons.home),
            label: Text("home"),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.telegram),
            label: Text("home"),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.home),
            label: Text("home"),
          ),
        ],
        selectedIndex: curretindex,
        extended: true,
      ),
    );
  }
}
