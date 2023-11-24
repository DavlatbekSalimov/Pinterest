import 'package:flutter/material.dart';
import 'package:pinterest/example_database.dart';

class Keyinigi extends StatefulWidget {
  const Keyinigi({super.key});

  @override
  State<Keyinigi> createState() => _KeyinigiState();
}

class _KeyinigiState extends State<Keyinigi> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("salom"),
            toolbarHeight: 100,
            expandedHeight: 300,
            floating: false,
            pinned: true,
            backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/welcome.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5),
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigoAccent),
              );
            },
          ),
          SliverGrid.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (contex, index) {
              return Container(
                margin: EdgeInsets.all(5),
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigoAccent),
              );
            },
          )
        ],
      ),
    );
  }
}
