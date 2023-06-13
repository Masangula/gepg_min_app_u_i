import 'package:flutter/material.dart';
import 'package:gepg_min_app_u_i/app/modules/home/controllers/payment_history_controller.dart';
import 'package:gepg_min_app_u_i/app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';

class GepgProfileView extends GetView<PaymentHistoryController> {
  const GepgProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.buildCustomAppBar(
        showBackButton: false,
        title: "Profile",
      ),
    );
  }
}
