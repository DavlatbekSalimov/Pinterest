import 'package:flutter/material.dart';
import 'package:pinterest/Register/LoginPage/loginPage.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 420,
                height: MediaQuery.of(context).size.height * 0.5,
                child: ClipRRect(
                  borderRadius: const BorderRadiusDirectional.vertical(
                      bottom: Radius.circular(20)),
                  child: Image.asset(
                    "assets/images/welcome.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 160),
                child: Align(
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontFamily: "Libre",
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                        fontSize: 40),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/icons/pinterest.png",
            height: 125,
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            width: 350,
            height: 55,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Sing Up",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(50),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            width: 350,
            height: 55,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Text(
                "Log In",
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.red),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(50))),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "By continuing you agree to Pinterst's ",
            style: TextStyle(
                fontFamily: "Libre", fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const Text(
            "terms of Servise and Privasy Policy",
            style: TextStyle(
                fontFamily: "Libre", fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
