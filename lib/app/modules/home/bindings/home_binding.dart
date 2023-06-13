import 'package:gepg_min_app_u_i/app/modules/home/controllers/favorite_controller.dart';
import 'package:gepg_min_app_u_i/app/modules/home/controllers/payment_history_controller.dart';
import 'package:gepg_min_app_u_i/app/modules/home/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<PaymentHistoryController>(
      () => PaymentHistoryController(),
    );
    Get.lazyPut<FavoriteController>(
      () => FavoriteController(),
    );
  }
}
