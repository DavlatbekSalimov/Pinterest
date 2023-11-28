import 'package:flutter/material.dart';
import 'package:pinterest/HomeScrean/homePages.dart';
import 'package:pinterest/HomeScrean/navigatorBar.dart';
import 'package:pinterest/Register/SignInPage/SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _registercount = 0;
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 420,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: ClipRRect(
                      borderRadius: const BorderRadiusDirectional.vertical(
                          bottom: Radius.circular(40)),
                      child: Image.asset(
                        "assets/images/loginbgc.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 100, right: 250),
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontFamily: "Libre"),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Form(
                              key: _globalKey,
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: emailController,
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                          color: Colors.black54, fontSize: 15),
                                      fillColor: Colors.white10,
                                      hoverColor: Colors.cyan,
                                      label: Text(
                                        "Email",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == "") {
                                        return "Enter your email";
                                      } else if (value != "dav") {
                                        return "Email not available";
                                      }
                                      _registercount++;
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  TextFormField(
                                    controller: passwordController,
                                    cursorColor: Colors.white,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                          color: Colors.black54, fontSize: 15),
                                      label: Text(
                                        "Password",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == "") {
                                        return "Enter your password";
                                      } else if (value != "dav1") {
                                        return "Password not available";
                                      }
                                      _registercount++;
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  SizedBox(
                                    width: 350,
                                    height: 55,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(
                                          () {
                                            if (_registercount == 2) {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      NavigatorBarr(),
                                                ),
                                              );
                                            } else {
                                              final snackBar = SnackBar(
                                                content: const Text(
                                                    'Yay! A SnackBar!'),
                                                action: SnackBarAction(
                                                  label: 'Undo',
                                                  onPressed: () {
                                                    // Some code to undo the change.
                                                  },
                                                ),
                                              );
                                            }
                                          },
                                        );
                                        _globalKey.currentState?.validate();
                                      },
                                      child: const Text(
                                        "Log In",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.redAccent),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.red,
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  50),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "OR",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      width: 350,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          final facebook = SnackBar(
                            backgroundColor: Colors.indigo,
                            duration: Duration(microseconds: 9),
                            content:
                                const Text("You can't log in to Facebook yet"),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(facebook);
                        },
                        child: const Text(
                          "Continue with Facebook",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(50),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 350,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          final google = SnackBar(
                            duration: Duration(microseconds: 8),
                            backgroundColor: Colors.indigoAccent,
                            content: const Text("Can't get past Google yet"),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(google);
                        },
                        child: const Text(
                          "Continue with Google",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigoAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(50),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: TextButton(
                          onPressed: () {
                            final snackBar = SnackBar(
                              backgroundColor: Colors.black54,
                              content: const Text('Password cannot be reset !'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (contex) => SignUpPage(),
                                  ),
                                );
                              },
                              child: Text("forget your password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black54),),),),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
