import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/view-show-all.svg", "text": "Factory View"},
      {"icon": "assets/icons/table-svgrepo-com.svg", "text": "Overall View"},
      {"icon": "assets/icons/Analyis.svg", "text": "Dashboard"},
      {"icon": "assets/icons/f.svg", "text": "Group View"},
    ];

    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(30)),
      decoration: BoxDecoration(
        color: Color(0xFFEFCAC0),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(65),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              height: getProportionateScreenWidth(70),
              width: getProportionateScreenWidth(65),
              decoration: BoxDecoration(
                color: Color(0xFFD4897B),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 10),
            Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

class Cat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/business-analytics.svg", "text": "Analysis"},
      {"icon": "assets/icons/report.svg", "text": "Report"},
      {"icon": "assets/icons/alarm-clock.svg", "text": "Alarm"},
      {"icon": "assets/icons/manufacturing.svg", "text": "Machine Gallery"},
    ];

    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(30)),
      decoration: BoxDecoration(
        color: Color(0xFFEFCAC0),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/light-lightbulb.svg", "text": "General"},
      {"icon": "assets/icons/fuel-svgrepo-com.svg", "text": "Diesel"},
      {"icon": "assets/icons/flash-svgrepo-com.svg", "text": "Power"},
      {"icon": "assets/icons/report.svg", "text": "Report"},
    ];
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(30)),
      decoration: BoxDecoration(
        color: Color(0xFFEFCAC0),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/about-me.svg", "text": "About"},
      {"icon": "assets/icons/feedback.svg", "text": "Rate Us"},
      {"icon": "assets/icons/help.svg", "text": "Help"},
    ];

    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      decoration: BoxDecoration(
        color: Color(0xFFEFCAC0),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}
