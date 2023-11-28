

import 'package:flutter/material.dart';
import 'package:pinterest/widgets/saralari.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 25),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              child: TextFormField(
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.camera_alt),
                    hintText: 'Search for ideas'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Ideas for you",
                style: TextStyle(
                    fontFamily: "Libre",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
           SaralariPage(),
          ],
        ),
      ),
    );
  }
}


