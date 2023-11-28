
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pinterest/Register/LoginPage/loginPage.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    });
    super.initState();
  }
  // textTheme: GoogleFonts.alegreyaSansTextTheme(), <- main uchun lottie
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/animation/loading.json"),
            const SizedBox(height: 8),
           
          ],
        ),
      ),
    );
  }
}
