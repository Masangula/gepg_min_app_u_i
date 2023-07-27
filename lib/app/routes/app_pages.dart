import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/make_payment/bindings/make_payment_binding.dart';
import '../modules/make_payment/views/make_payment_view.dart';
import '../modules/multiple_bills/bindings/multiple_bills_binding.dart';
import '../modules/multiple_bills/views/multiple_bills_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAKE_PAYMENT,
      page: () => const MakePaymentView(),
      binding: MakePaymentBinding(),
    ),
    GetPage(
      name: _Paths.MULTIPLE_BILLS,
      page: () => const MultipleBillsView(),
      binding: MultipleBillsBinding(),
    ),
  ];
}
