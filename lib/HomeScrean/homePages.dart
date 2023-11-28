import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  Color? color = Colors.black45;
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        backgroundColor: Colors.white,
        bottom: TabBar(
          labelColor: Colors.black,
          controller: tabController,
          unselectedLabelColor: Colors.black54,
          indicatorColor: Colors.indigoAccent,
          tabs: [
            const Tab(
              text: "Fore you",
            ),
            const Tab(
              text: "Compyuter home",
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8.0,
          mainAxisExtent: 700 / 2,
        ),
        itemBuilder: (context, index) {
          return wid();
        },
      ),
    );
  }

  Widget wid() {
    return Stack(
      children: [
        Material(
          elevation: 10,
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "http://source.unsplash.com/random/${Random().nextInt(100)}",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(
                        () {
                          color = Colors.red;
                        },
                      );
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: color,
                    ),
                  ),
                  Text('${Random().nextInt(1000)}')
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
