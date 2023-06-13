import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar {
  static AppBar buildCustomAppBar({
    required bool showBackButton,
    required String title,
  }) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.elliptical(50, 8),
            bottomRight: Radius.elliptical(50, 8),
          ),
          color: Colors.yellow.shade200,
        ),
      ),
      leading: showBackButton
          ? BackButton(
              onPressed: () {
                Get.back();
              },
            )
          : const SizedBox(),
      centerTitle: true,
      title: Text(title.tr),
    );
  }
}
