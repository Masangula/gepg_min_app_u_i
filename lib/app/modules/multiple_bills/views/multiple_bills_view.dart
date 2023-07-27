import 'package:flutter/material.dart';
import 'package:gepg_min_app_u_i/app/widgets/custom_app_bar.dart';
import 'package:gepg_min_app_u_i/app/widgets/payment_details_item.dart';

import 'package:get/get.dart';

import '../controllers/multiple_bills_controller.dart';

class MultipleBillsView extends GetView<MultipleBillsController> {
  const MultipleBillsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.buildCustomAppBar(
        showBackButton: true,
        title: "Pending Payments",
      ),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildBillMajorDetails(),
            buildAlertWidget(),
            buildBillDetails(onTap: () {}),
            buildBillDetails(onTap: () {}),
            const SizedBox(height: 40)
          ],
        ),
      ),
    );
  }

  Container buildBillMajorDetails() {
    return Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: const Column(
              children: [
                PaymentDetailsItem(
                  leadingKeyText: "Billed to",
                  trailingValueText: "Gwakisa Mwasandumbe",
                  isKeyGrey: false,
                  showBottomDivider: true,
                ),
                PaymentDetailsItem(
                  leadingKeyText: "Plate Number",
                  trailingValueText: "T111EAA",
                  isKeyGrey: true,
                  showBottomDivider: true,
                ),
                PaymentDetailsItem(
                  leadingKeyText: "Provider",
                  trailingValueText: "TARURA",
                  isKeyGrey: true,
                  showBottomDivider: false,
                ),
              ],
            ),
          );
  }

  Container buildAlertWidget() {
    return Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.amber.shade100,
            ),
            child: const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 25,
                child: Icon(
                  Icons.notifications_none_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              title: Text(
                "Looks like you have multiple bills. Click 'Pay Now' to pay your bills and avoid penalty",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              ),
            ),
          );
  }

  Container buildBillDetails({required Function onTap}) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const PaymentDetailsItem(
            leadingKeyText: "Controll number",
            trailingValueText: "998600473830",
            isKeyGrey: true,
            showBottomDivider: true,
          ),
          const PaymentDetailsItem(
            leadingKeyText: "Expiration Date",
            trailingValueText: "23:59,Nov 2023",
            isKeyGrey: true,
            showBottomDivider: true,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            title: const Text(
              "Bill Amount",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            subtitle: const Text(
              "15000 TZS",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
            trailing: GestureDetector(
              onDoubleTap: () {
                onTap();
              },
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 0.5, color: Colors.blue),
                ),
                child: const Text(
                  "Pay Now",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}
