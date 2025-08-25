import 'dart:async';

import 'package:get/get.dart';
import 'package:portfolio/core/utils/constants/image_path.dart';

class HomeController extends GetxController{
  var selectedIndex=0.obs;
  var currentIndex=0.obs;
  void changeIndex(int index){
    selectedIndex.value=index;
    _timer?.cancel();
  }

  String get currentGreeting => contentStates[currentIndex.value]["greeting"]!;
  String get currentText1 => contentStates[currentIndex.value]["text1"]!;
  String get currentHighlight => contentStates[currentIndex.value]["highlight"]!;
  String get currentText2 => contentStates[currentIndex.value]["text2"]!;
  String get image=> contentStates[currentIndex.value]["images"]!;

  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(milliseconds: 700), () {
      startContentTransition();
    });
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  void startContentTransition() {
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 4), (timer) {
      currentIndex.value = (currentIndex.value + 1) % contentStates.length;
    });
  }

  final List<Map<String, String>> contentStates = [
    {
      "greeting": "HELLO!",
      "text1": "I'm \n",
      "highlight": "App developer",
      "text2": " based \nin Bangladesh",
      "images": ImagePath.logo,
    },
    {
      "greeting": "WELCOME!",
      "text1": "I'm\n",
      "highlight": "Self learner &\n",
      "text2": "progeraming lover",
      "images": ImagePath.logo,
    },
    {
      "greeting": "HI THERE!",
      "text1": "I'm \n",
      "highlight": "Senior developer & \ndepartment head",
      "text2": "\nof App development\nat Softvence",
      "images": ImagePath.logo,
    }
  ];
}