import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hinttext;
  final Text? label;
  final Widget? icon;
  final String? counttext;
  final String? Function(String?)? validatorr;

   MyTextFormField({
    Key? key,
    this.controller,
    this.hinttext,
    this.label,
    this.icon,
    this.counttext,
    this.validatorr,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIconColor: Colors.indigoAccent,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
         // borderSide: BorderSide(color: Colors.red),
        ),
        label: label,
        prefixIcon: icon,
        counterText: counttext,
        counterStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        iconColor: Colors.blueAccent,
        labelStyle: const TextStyle(fontSize: 17, color: Colors.blueAccent),
        hintText: hinttext,
      ),
      validator: validatorMy
    );
  }
}
String? validatorMy(value) {
    if (value == null || value.isEmpty) {
      return "Maydonni to'ldiring";
    }
    return null;
  }