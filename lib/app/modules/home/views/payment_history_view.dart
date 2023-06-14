import 'package:flutter/material.dart';
import 'package:gepg_min_app_u_i/app/modules/home/controllers/payment_history_controller.dart';
import 'package:gepg_min_app_u_i/app/widgets/custom_app_bar.dart';
import 'package:gepg_min_app_u_i/app/widgets/history_item.dart';
import 'package:get/get.dart';

class PaymentHistoryView extends GetView<PaymentHistoryController> {
  const PaymentHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.buildCustomAppBar(
        showBackButton: false,
        title: "Payment History",
      ),
      backgroundColor: Colors.grey.shade100,
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          buildDateHeading(formatedDate:  "Wednesday, 14 June 2023"),
          const SizedBox(
            height: 10,
          ),
          const HistoryItem(),
          const HistoryItem(),
          const HistoryItem(),
          const SizedBox(
            height: 10,
          ),
          buildDateHeading(formatedDate:  "Tuesday, 14 May 2023"),
          const SizedBox(
            height: 10,
          ),
          const HistoryItem(),
          const HistoryItem(),
        ],
      ),
    );
  }

  Padding buildDateHeading({required String formatedDate}) {
    return Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
           formatedDate,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        );
  }
}
