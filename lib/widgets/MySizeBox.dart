
import 'package:flutter/material.dart';

class MySizeBox extends StatelessWidget {
  final double? height;
  const MySizeBox({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 20,
    );
  }
}