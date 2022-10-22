import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:miniproject_ealrning/constant.dart';
import 'package:miniproject_ealrning/pages/homepage/dashboard.dart';
import 'package:miniproject_ealrning/pages/loginpage/login.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: demo_data.length,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    controller: _pageController,
                    itemBuilder: (context, index) => onboardContent(
                      lottie: demo_data[index].lottie,
                      title: demo_data[index].title,
                      description: demo_data[index].description,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    ...List.generate(
                      demo_data.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: 4),
                        child: DotIndicator(isActive: index == _pageIndex),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                          //  NavigationBar
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                        ),
                        child: Image.asset(
                          "assets/images/rw.png",
                          // scale: ,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(12)),
    );
  }
}

class Onboard {
  final String lottie, title, description;

  Onboard(
      {required this.lottie, required this.title, required this.description});
}

final List<Onboard> demo_data = [
  Onboard(
    lottie: ("assets/lotties/hello.json"),
    title: "Learning Flexibility",
    description:
        "This means that there’s a greater\n deal of flexibility in the delivery of lessons. ",
  ),
  Onboard(
      lottie: ("assets/lotties/63921-developer.json"),
      title: "Connected Learning",
      description:
          "Connection and belonging are\n incredibly important concepts for all learners. "),
  Onboard(
    lottie: ("assets/lotties/113152-learning.json"),
    title: "Develops Accountabilit",
    description:
        "Digital learning will stimulate most of \nthe senses necessary to create a good habit. ",
  ),
];

class onboardContent extends StatelessWidget {
  const onboardContent({
    Key? key,
    this.lottie,
    this.title,
    this.description,
  }) : super(key: key);

  final lottie, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Lottie.asset(lottie, height: 350),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold, fontSize: 34, color: kPrimaryColor),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
