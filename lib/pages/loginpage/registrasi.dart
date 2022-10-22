import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:miniproject_ealrning/constant.dart';
import 'package:miniproject_ealrning/pages/homepage/dashboard.dart';
import 'package:miniproject_ealrning/pages/loginpage/login.dart';

class RegistrasiPage extends StatefulWidget {
  RegistrasiPage({Key? key}) : super(key: key);

  @override
  State<RegistrasiPage> createState() => _RegistrasiPageState();
}

class _RegistrasiPageState extends State<RegistrasiPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double viewInset = MediaQuery.of(context).viewInsets.bottom;
    double defaultLoginSize = size.height - (size.height * 0.2);
    double defaultRegisterSize = size.height - (size.height * 0.1);
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 30),
      children: [
        Container(
          child:
              Lottie.asset("assets/lotties/su.json", height: 250, width: 250),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Create account here",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              // width: size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor.withAlpha(50)),
              child: const TextField(
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    icon: Icon(Icons.person, color: kPrimaryColor),
                    hintText: "Full name",
                    border: InputBorder.none),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              // width: size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              // width: size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              // width: size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor.withAlpha(50)),
              child: const TextField(
                obscureText: true,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    icon: Icon(Icons.key_outlined, color: kPrimaryColor),
                    hintText: "Confirm Password",
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
                // width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor,
                ),
                padding: const EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                child: const Text(
                  "Register",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already sign in? ",
                  style: TextStyle(color: kPrimaryColor),
                ),
                InkWell(
                  child: Text(
                    " Sign In?",
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}
