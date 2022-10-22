import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:miniproject_ealrning/constant.dart';

import 'package:miniproject_ealrning/pages/homepage/dashboard.dart';
import 'package:miniproject_ealrning/pages/loginpage/registrasi.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double viewInset = MediaQuery.of(context).viewInsets.bottom;
    double defaultLoginSize = size.height - (size.height * 0.2);
    double defaultRegisterSize = size.height - (size.height * 0.1);
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Container(
                width: size.width,
                height: defaultLoginSize,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      " Welcome Back !",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Lottie.asset("assets/lotties/81319-web-developer.json",
                        width: 250, height: 250),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kPrimaryColor.withAlpha(50)),
                      child: const TextField(
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                            icon: Icon(Icons.email, color: kPrimaryColor),
                            hintText: "Email",
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kPrimaryColor.withAlpha(50)),
                      child: const TextField(
                        obscureText: true,
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                            icon: Icon(Icons.key, color: kPrimaryColor),
                            hintText: "Password",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      highlightColor: Colors.amber,
                      splashColor: Colors.red,
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DashboardPage(),
                            ));
                      },
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kPrimaryColor,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        alignment: Alignment.center,
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: size.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100)),
                color: kBackgroundColor,
              ),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    InkWell(
                      child: Text(
                        " Sign up?",
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegistrasiPage(),
                            ));
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
