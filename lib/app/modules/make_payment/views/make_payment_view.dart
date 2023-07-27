import 'package:flutter/material.dart';
import 'package:gepg_min_app_u_i/app/routes/app_pages.dart';
import 'package:gepg_min_app_u_i/app/utils/app_constants.dart';
import 'package:gepg_min_app_u_i/app/widgets/custom_app_bar.dart';
import 'package:gepg_min_app_u_i/app/widgets/custom_button.dart';

import 'package:get/get.dart';

import '../controllers/make_payment_controller.dart';

class MakePaymentView extends GetView<MakePaymentController> {
  const MakePaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar.buildCustomAppBar(
        showBackButton: true,
        title: controller.appBarTitle.capitalizeFirst!,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: controller.isAprocess!
                  ? buildNormalControlNumberFields()
                  : controller.institutionService == InstitutionServices.luku
                      ? buildLukuFields()
                      : controller.institutionService ==
                              InstitutionServices.parking
                          ? buildParkingTaruraFields()
                          : buildNormalControlNumberFields(),
            ),
          ),
          CustomButton(
            label: "Fetch Details",
            height: 42,
            width: Get.size.width * 0.85,
            actionFunction: () {
              Get.toNamed(Routes.MULTIPLE_BILLS);
            },
            verticalPadding: 32,
          )
        ],
      ),
    );
  }

  List<Widget> buildParkingTaruraFields() {
    return [
      buildTitleHeaders(title: "Plate number"),
      const SizedBox(
        height: 4,
      ),
      customTextfield(hintText: "Enter vehicle plate number"),
    ];
  }

  List<Widget> buildNormalControlNumberFields() {
    return [
      buildTitleHeaders(title: "Control number"),
      const SizedBox(
        height: 4,
      ),
      customTextfield(
        hintText: "Enter your control number",
        suffixIcon: Icons.qr_code,
        suffixIconActionFunction: () {},
        textInputType: TextInputType.number,
      ),
    ];
  }

  List<Widget> buildLukuFields() {
    return [
      buildTitleHeaders(title: "Meter number"),
      const SizedBox(
        height: 4,
      ),
      customTextfield(
        hintText: "Enter meter number",
        textInputType: TextInputType.number,
      ),
      const SizedBox(
        height: 10,
      ),
      buildTitleHeaders(title: "Amount"),
      const SizedBox(
        height: 4,
      ),
      customTextfield(
        textInputType: TextInputType.number,
        hintText: "Enter amount",
      ),
    ];
  }

  Text buildTitleHeaders({required String title}) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  SizedBox customTextfield({
    String? label,
    String? hintText,
    IconData? suffixIcon,
    Function? suffixIconActionFunction,
    TextEditingController? textEditingController,
    TextInputType? textInputType,
  }) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          label: label == null ? null : Text(label),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade700,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
          suffixIcon: suffixIcon == null
              ? null
              : GestureDetector(
                  onTap: () {
                    if (suffixIconActionFunction != null) {
                      suffixIconActionFunction();
                    }
                  },
                  child: Icon(
                    suffixIcon,
                    color: Colors.blue,
                  ),
                ),
        ),
      ),
    );
  }
}
