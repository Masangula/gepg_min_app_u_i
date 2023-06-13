import 'package:get/get.dart';

class MakePaymentController extends GetxController {
  var service = Get.arguments["InstitutionServices"] == ""
      ? Get.arguments["GepgProcesses"]
      : Get.arguments["InstitutionServices"];

    

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

  void increment() => count.value++;
}
