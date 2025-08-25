import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/common/styles/global_text_style.dart';
import 'package:portfolio/features/home_page/controller/home_controller.dart';
import 'package:portfolio/features/home_page/widget/about_me.dart';
import 'package:portfolio/features/home_page/widget/header_section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'CLARK',
                      style: GoogleFonts.aclonica(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    Row(
                      children: [
                        buildNavItem('Home', 0),
                        const SizedBox(width: 20),
                        buildNavItem('About', 1),
                        const SizedBox(width: 20),
                        buildNavItem('Resume', 2),
                        const SizedBox(width: 20),
                        buildNavItem('Services', 3),
                        const SizedBox(width: 20),
                        buildNavItem('Skills', 4),
                        const SizedBox(width: 20),
                        buildNavItem('Projects', 5),
                        const SizedBox(width: 20),
                        buildNavItem('My Blog', 6),
                        const SizedBox(width: 20),
                        buildNavItem('Contact', 7),
                      ],
                    ),
                  ],
                ),
              ),
              HeaderSection(homeController: homeController),
              AboutMe(homeController: homeController),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavItem(String title, int index) {
    bool isSelected = homeController.selectedIndex.value == index;
    return GestureDetector(
      onTap: () => homeController.changeIndex(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 5),
            child: Text(
              title,
              style: getTextStyle(
                fontSize: 4,
                color: isSelected ? Colors.blue : Colors.white,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          Container(
            height: 2,
            width: 50,
            color: isSelected ? Colors.blue : Colors.transparent,
          ),
        ],
      ),
    );
  }
}