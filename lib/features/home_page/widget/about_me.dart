import 'package:flutter/material.dart';
import 'package:portfolio/core/common/styles/global_text_style.dart';
import 'package:portfolio/core/utils/constants/image_path.dart';
import 'package:portfolio/features/home_page/controller/home_controller.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key, required this.homeController});

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // 🟢 টপ থেকে শুরু করবে
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 🖼 Image (বাম পাশে)
          Container(
            color: Colors.transparent,
            child: Image.asset(
              ImagePath.logo,
              height: 600, // একটু ছোট নিলে ভালো দেখাবে
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 50),

          // 📝 Text (ডান পাশে)
          Container(
            width: 500,
            color: Colors.transparent,
            alignment: Alignment.topLeft, // 🟢 টেক্সটকে টপে বসাবে
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  "About Me",
                  style: getTextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "I am a passionate Flutter Developer with experience in building "
                  "modern, responsive, and high-performance applications for mobile and web.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    height: 1.5,
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
