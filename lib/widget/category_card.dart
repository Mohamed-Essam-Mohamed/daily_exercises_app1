// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:daily_exercises_app1/core/utils/my_color.dart';
import 'package:daily_exercises_app1/core/utils/my_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget {
  String imagePath;
  String description;
  Function myOnTap;
  CategoryCard({
    required this.description,
    required this.imagePath,
    required this.myOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: MyColor.kShadowColor,
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
            )
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              myOnTap();
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(imagePath),
                  Spacer(),
                  Text(
                    description,
                    style: MyTextStyle.textStyle18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
