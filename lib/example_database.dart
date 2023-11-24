// import 'package:flutter/material.dart';

// class MyTextField extends StatelessWidget {
//   final String hintText;
//   final String labelText;

//   const MyTextField({required this.hintText, required this.labelText});

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: InputDecoration(
//         hintText: hintText,
//         labelText: labelText,
//         border: OutlineInputBorder(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MyTextFild extends StatelessWidget {
  final String hintText;
  final String labelText;
  const MyTextFild({super.key, required this.hintText, required this.labelText});
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(  
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}

