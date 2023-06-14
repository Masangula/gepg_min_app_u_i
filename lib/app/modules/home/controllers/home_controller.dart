import 'package:gepg_min_app_u_i/app/utils/app_constants.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  Rx<dynamic>? serviceSelected;

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

  void changeSelectedService({InstitutionServices? institutionServices,GepgProcesses? gepgProcesses,}){
    serviceSelected!.value = institutionServices;
  }

  void increment() => count.value++;
}
