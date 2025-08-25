import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/common/styles/global_text_style.dart';
import 'package:portfolio/features/home_page/controller/home_controller.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.homeController});

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 500,
                color: Colors.transparent,
                child: Expanded(
                  flex: 1,
                  child: Obx(
                    () => AnimatedSwitcher(
                      duration: Duration(milliseconds: 700),
                      child: Column(
                        key: ValueKey<int>(homeController.currentIndex.value),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            homeController.currentGreeting,
                            style: GoogleFonts.poppins(
                              color: Colors.blue,
                              fontSize: 18,
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: homeController.currentText1,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: homeController.currentHighlight,
                                  style: GoogleFonts.poppins(
                                    color: Colors.blue,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: homeController.currentText2,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  //
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blue,
                                  ),
                                  child: Text('HIRE ME',style: getTextStyle(fontSize: 4,color: Colors.white),),
                                ),
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                onTap: () {
                                  //
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: BoxBorder.all(color: Colors.grey),
                                    color: Colors.transparent,
                                  ),
                                  child: Text('MY WORK',style:  getTextStyle(fontSize: 4,color: Colors.white),),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                child: Expanded(
                  flex: 2,
                  child: Obx(
                    () => AnimatedSwitcher(
                      duration: Duration(milliseconds: 700),
                      child: Container(
                        key: ValueKey<int>(homeController.currentIndex.value),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(homeController.image, height: 600),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < homeController.contentStates.length; i++)
                  GestureDetector(
                    onTap: () {
                      homeController.currentIndex.value = i;
                      homeController.startContentTransition();
                    },
                    child: Container(
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: homeController.currentIndex.value == i
                            ? Colors.blue
                            : Colors.grey.withValues(alpha: 0.3),
                        border: Border.all(
                          color: homeController.currentIndex.value == i
                              ? Colors.blue
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
