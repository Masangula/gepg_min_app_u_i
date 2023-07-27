import 'package:get/get.dart';

import '../controllers/multiple_bills_controller.dart';

class MultipleBillsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MultipleBillsController>(
      () => MultipleBillsController(),
    );
  }
}
