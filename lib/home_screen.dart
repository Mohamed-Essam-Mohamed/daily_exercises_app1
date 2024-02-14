// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:daily_exercises_app1/core/utils/my_color.dart';
import 'package:daily_exercises_app1/widget/category_card.dart';
import 'package:daily_exercises_app1/core/utils/my_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexBottmNav = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEBB),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 52,
                        width: 52,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFFF2BEA1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset("assets/icons/menu.svg"),
                      ),
                    ),
                  ),
                  Text(
                    "Good Mornign\nMohamed",
                    style: MyTextStyle.textStyle30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    margin: EdgeInsets.symmetric(vertical: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "search",
                        icon: SvgPicture.asset("assets/icons/search.svg"),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                            description: "Diet Recommendation",
                            myOnTap: () {},
                            imagePath: "assets/icons/Hamburger.svg"),
                        CategoryCard(
                            description: "Kegel Exercises",
                            myOnTap: () {},
                            imagePath: "assets/icons/Excrecises.svg"),
                        CategoryCard(
                            description: "Meditation",
                            myOnTap: () {},
                            imagePath: "assets/icons/Meditation.svg"),
                        CategoryCard(
                            description: "Yoga",
                            myOnTap: () {},
                            imagePath: "assets/icons/yoga.svg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottmNav,
        onTap: (index) {
          indexBottmNav = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/calendar.svg",
              color:
                  indexBottmNav == 0 ? MyColor.kActiveIconColor : Colors.grey,
            ),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/gym.svg",
              color:
                  indexBottmNav == 1 ? MyColor.kActiveIconColor : Colors.grey,
            ),
            label: 'All Exercises',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Settings.svg",
              color:
                  indexBottmNav == 2 ? MyColor.kActiveIconColor : Colors.grey,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
