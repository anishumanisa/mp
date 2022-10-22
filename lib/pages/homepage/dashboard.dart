import 'package:avatar_view/avatar_view.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:miniproject_ealrning/constant.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:miniproject_ealrning/pages/loginpage/login.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int curretaindex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      ListView(
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    child: const AvatarView(
                      radius: 22,
                      // borderColor: Colors.purple,
                      avatarType: AvatarType.CIRCLE,
                      backgroundColor: Colors.red,
                      imagePath: "assets/images/anis.jpg",
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Anis Humanisa",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text("Welcome back !")
                    ],
                  ),
                  const Spacer(),
                  Container(
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: kPrimaryColor,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: const Icon(
                      Icons.favorite_border_rounded,
                      color: kPrimaryColor,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: const Icon(
                      Icons.notifications_none_rounded,
                      color: kPrimaryColor,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                // width: size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kPrimaryColor.withAlpha(20)),
                child: const TextField(
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                      hintText: "Search ",
                      icon: Icon(Icons.search_rounded, color: kPrimaryColor),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  "Kategori Kursus",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/browser.png",
                          color: kPrimaryColor,
                          // color: kPrimaryColor,
                          // color: ,
                          scale: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "UI/UX Design",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/browser.png",
                          color: kPrimaryColor,
                          // color: ,
                          scale: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "UI/UX Design",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/browser.png",
                          color: kPrimaryColor,
                          // color: ,
                          scale: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "UI/UX Design",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/browser.png",
                          color: kPrimaryColor,
                          // color: ,
                          scale: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "UI/UX Design",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/browser.png",
                          color: kPrimaryColor,
                          // color: kPrimaryColor,
                          // color: ,
                          scale: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "UI/UX Design",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/browser.png",
                          color: kPrimaryColor,
                          // color: ,
                          scale: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "UI/UX Design",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/browser.png",
                          color: kPrimaryColor,
                          // color: ,
                          scale: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "UI/UX Design",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/browser.png",
                          color: kPrimaryColor,
                          // color: ,
                          scale: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "UI/UX Design",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              "E-learning",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              // height: 40,
              // aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Container(
                margin: const EdgeInsets.only(bottom: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/promo.png"))),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/promo_kursus.png"))),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/diskon.png"))),
              ),
            ],
          ),
          Row(
            // mainAxisAlignment: ,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  "Flash Sale",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                width: 100,
                height: 25,
                child: const Text(
                  "Lihat semua",
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: kPrimaryColor),
                    // color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/design.jpg",
                      height: 150,
                      width: 250,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Basic UI/UX Design",
                      // textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 17),
                        child: Text(
                          "Anis Humanisa",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        size: 15,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        size: 15,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        size: 15,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        size: 15,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        size: 15,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 150),
                    child: Text(
                      "Rp. 200. 000",
                      // textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      Container(),
      Center(
        child: Text("Menu 3"),
      ),
    ];
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: widgets[curretaindex]),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: kPrimaryColor,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          // TabItem(icon: Icons.message, title: 'Message'),
          // TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) => setState(() {
          curretaindex = i;
        }),
      ),
    );
  }
}
