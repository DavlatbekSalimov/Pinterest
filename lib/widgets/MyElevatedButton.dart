import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color shadowColor;
  final double elevation;
  final double radius;
  final void Function()? onPressed;
  const MyElevatedButton(
      {super.key,
      required this.text,
       this.onPressed,
       this.backgroundColor=Colors.indigo,
       this.shadowColor=Colors.indigoAccent,
       this.elevation=6,
       this.radius=40,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          shadowColor: shadowColor,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed:onPressed, 
        child: Text(text),
      ),
    );
  }
}
