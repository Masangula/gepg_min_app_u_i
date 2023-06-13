import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onChangingNavigation(int selectedIndex) {
    currentIndex.value = selectedIndex;
  }

  void increment() => count.value++;
}
