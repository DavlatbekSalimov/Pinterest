import 'package:flutter/material.dart';
import 'package:pinterest/HomeScrean/homePages.dart';
import 'package:pinterest/HomeScrean/navigatorBar.dart';
import 'package:pinterest/widgets/MyElevatedButton.dart';
import 'package:pinterest/widgets/MySizeBox.dart';
import 'package:pinterest/widgets/MyTextFormFild.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Form(
                  child: Column(
                    children: [
                      Text(
                        "Let's Get Started!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      Text(
                        "Create an account to Q Alluare to get all features",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black38),
                      ),
                    ],
                  ),
                ),
              ),
              MySizeBox(
                height: 40,
              ),
              Form(
                key: _globalKey,
                child: Column(
                  children: [
                    MyTextFormField(
                      label: Text("User Name"),
                      icon: Icon(Icons.person),
                    ),
                    MySizeBox(),
                    MyTextFormField(
                      label: Text("Email"),
                      icon: Icon(Icons.email),
                    ),
                    MySizeBox(),
                    MyTextFormField(
                      label: Text("Phone"),
                      icon: Icon(Icons.phone),
                      validatorr: validatorMy,
                    ),
                    MySizeBox(),
                    MyTextFormField(
                      label: Text("Password"),
                      icon: Icon(Icons.lock_sharp),
                    ),
                    MySizeBox(),
                    MyTextFormField(
                      label: Text("Confirm"),
                      icon: Icon(Icons.lock_sharp),
                    ),
                    MySizeBox(),
                  ],
                ),
              ),
              MyElevatedButton(
                onPressed: () {
                  _globalKey.currentState?.validate();
                  var res = _globalKey.currentState?.validate() ?? false;
                  if (res) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (contex) => const NavigatorBarr()));
                  }
                },
                text: "CREATE",
                backgroundColor: Color.fromARGB(255, 54, 9, 233),
              ),
              MySizeBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: "Libre"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Login here",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
