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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.transparent,
            child: Image.asset(
              ImagePath.logo,
              height: 600,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 50),
          Container(
            width: 500,
            color: Colors.transparent,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Me",
                  style: getTextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "I am a passionate Flutter Developer with experience in building "
                  "modern, responsive, and high-performance applications for mobile and web.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      child: Text(
                        'Name: ',
                        style: getTextStyle(color: Colors.white, fontSize: 4),
                      ),
                    ),
                    Text(
                      'Md. Sazidul islam',
                      style: getTextStyle(color: Colors.grey, fontSize: 4),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      child: Text(
                        'Date of birth: ',
                        style: getTextStyle(color: Colors.white, fontSize: 4),
                      ),
                    ),
                    Text(
                      '20/12/2002',
                      style: getTextStyle(color: Colors.grey, fontSize: 4),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      child: Text(
                        'Address: ',
                        style: getTextStyle(color: Colors.white, fontSize: 4),
                      ),
                    ),
                    Text(
                      'Dhaka, bangladesh',
                      style: getTextStyle(color: Colors.grey, fontSize: 4),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      child: Text(
                        'Zip code:',
                        style: getTextStyle(color: Colors.white, fontSize: 4),
                      ),
                    ),
                    Text(
                      '73210',
                      style: getTextStyle(color: Colors.grey, fontSize: 4),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      child: Text(
                        'Email: ',
                        style: getTextStyle(color: Colors.white, fontSize: 4),
                      ),
                    ),
                    Text(
                      'rabbiking00@gmail.com',
                      style: getTextStyle(color: Colors.grey, fontSize: 4),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      child: Text(
                        'Phone: ',
                        style: getTextStyle(color: Colors.white, fontSize: 4),
                      ),
                    ),
                    Text(
                      '+8801999076918',
                      style: getTextStyle(color: Colors.grey, fontSize: 4),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      '30',
                      style: getTextStyle(color: Colors.blue, fontSize: 8),
                    ),
                    Text(
                      ' Project complete',
                      style: getTextStyle(color: Colors.white, fontSize: 6),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue,
                  ),
                  child: Text(
                    'CV download',
                    style: getTextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 4
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
