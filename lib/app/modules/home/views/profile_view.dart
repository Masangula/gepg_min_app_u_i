import 'package:flutter/material.dart';
import 'package:gepg_min_app_u_i/app/modules/home/controllers/payment_history_controller.dart';
import 'package:get/get.dart';

class GepgProfileView extends GetView<PaymentHistoryController> {
  const GepgProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile view"),
      ),
    );
  }
}
