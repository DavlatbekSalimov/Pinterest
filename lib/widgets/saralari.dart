import 'package:flutter/material.dart';
import 'dart:math';

class SaralariPage extends StatefulWidget {
  const SaralariPage({super.key});

  @override
  State<SaralariPage> createState() => _SaralariPageState();
}

class _SaralariPageState extends State<SaralariPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            saralar(),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: saralar(),
            ),
          ],
        ),
        Row(
          children: [
            saralar(),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: saralar(),
            ),
          ],
        ),
        Row(
          children: [
            saralar(),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: saralar(),
            ),
          ],
        ),
      ],
    );
  }
}

Widget saralar() {
  return Stack(
    children: [
      Container(
        padding: EdgeInsets.all(5),
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            "http://source.unsplash.com/random/${Random().nextInt(100)}",
            fit: BoxFit.fill,
          ),
        ),
      ),
      Align(
        child: Padding(
          padding: const EdgeInsets.only(left: 4, top: 25),
          child: Text(
            s.elementAt(Random().nextInt(3)),
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
      )
    ],
  );
}

List<String> s = [
  "Iphone fon",
  'Wallpaper fon',
  'android fon',
];
