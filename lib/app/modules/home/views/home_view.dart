import 'package:flutter/material.dart';
import 'package:gepg_min_app_u_i/app/modules/home/views/favorite_view.dart';
import 'package:gepg_min_app_u_i/app/modules/home/views/payment_history_view.dart';
import 'package:gepg_min_app_u_i/app/modules/home/views/profile_view.dart';
import 'package:gepg_min_app_u_i/app/routes/app_pages.dart';
import 'package:gepg_min_app_u_i/app/utils/app_constants.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Obx(
        () => controller.currentIndex.value == 0
            ? buildHomeView(context)
            : controller.currentIndex.value == 1
                ? const PaymentHistoryView()
                : controller.currentIndex.value == 2
                    ? const FavoriteView()
                    : const GepgProfileView(),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Container buildHomeView(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          Stack(
            // fit: StackFit.expand,
            children: [
              buildCustomAppBar(),
              buildGepgServices(context: context),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          buildHeading(),
          const SizedBox(
            height: 10,
          ),
          buildInstitutionServices(context: context)
        ],
      ),
    );
  }

  Obx buildBottomNavigationBar() {
    return Obx(
      () => BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_rounded,
            ),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: "Profile",
          ),
        ],
        currentIndex: controller.currentIndex.value,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black87,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        onTap: controller.onChangingNavigation,
        type: BottomNavigationBarType.fixed,
        elevation: 100,
      ),
    );
  }

  Padding buildHeading() {
    return const Padding(
      padding: EdgeInsets.only(left: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Institution Services",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Container buildCustomAppBar() {
    return Container(
      height: Get.size.height * 0.3,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Gorvernment Payments",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 54.0),
            child: Text(
              "Hello Joshua Masangula",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: Get.size.height * 0.06,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Make your Government Payments",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildInstitutionServices({required BuildContext context}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(
        top: 10,
        left: 5,
        right: 5,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildInstitutionServiceItem(
            title: "Luku",
            iconData: Icons.electric_bolt_rounded,
            color: Colors.green.shade400,
            context: context,
            service: InstitutionServices.luku,
          ),
          buildInstitutionServiceItem(
            title: "Water",
            iconData: Icons.water_drop_outlined,
            color: Colors.purple.shade400,
            context: context,
            service: InstitutionServices.water,
          ),
          buildInstitutionServiceItem(
            title: "Police",
            iconData: Icons.local_police_outlined,
            color: Colors.orange.shade400,
            context: context,
            service: InstitutionServices.police,
          ),
          buildInstitutionServiceItem(
            title: "Parking",
            iconData: Icons.local_parking_rounded,
            color: Colors.green.shade400,
            context: context,
            service: InstitutionServices.parking,
          ),
        ],
      ),
    );
  }

  Widget buildInstitutionServiceItem({
    required String title,
    required Color color,
    required IconData iconData,
    required BuildContext context,
    required InstitutionServices service,
  }) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 4, left: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey.shade100,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 5,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              service == InstitutionServices.parking
                                  ? "Parking Services"
                                  : "Luku Services",
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    buildProcessItem(
                        iconData: Icons.credit_card_rounded,
                        titleText: "Make Payment",
                        function: () {
                          Get.back();
                          Get.toNamed(
                            Routes.MAKE_PAYMENT,
                            arguments: {
                              "InstitutionServices": service,
                              "GepgProcesses": "",
                            },
                          );
                        }),
                    buildProcessItem(
                      iconData: Icons.history,
                      titleText: "Payment History",
                      function: () {
                        Get.back();
                        controller.currentIndex.value = 1;
                      },
                    ),
                    buildProcessItem(
                      iconData: Icons.favorite_outline_rounded,
                      titleText: "Favorite & Recent",
                      function: () {
                        Get.back();
                        controller.currentIndex.value = 2;
                      },
                    ),
                    service == InstitutionServices.luku
                        ? buildProcessItem(
                            iconData: Icons.receipt_long,
                            titleText: "Get Token",
                            function: () {},
                          )
                        : const SizedBox(),
                  ],
                ),
              );
            });
      },
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                width: 0.5,
                color: Colors.grey,
              ),
            ),
            child: Icon(
              iconData,
              color: color,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }

  Widget buildProcessItem({
    required IconData iconData,
    required titleText,
    required Function function,
  }) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        padding: const EdgeInsets.only(top: 15, left: 10, bottom: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade100,
            ),
          ),
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.grey.shade700,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              titleText,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildGepgServices({required BuildContext context}) {
    return Container(
      margin: EdgeInsets.only(
        top: Get.size.height * 0.23,
        left: 5,
        right: 5,
        bottom: 10,
      ),
      height: Get.size.height * 0.14,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
        bottom: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildGepgActions(
            rightMarginValue: 10,
            title: "Make Payment",
            iconData: Icons.receipt_outlined,
            color: Colors.green.shade400,
            context: context,
          ),
          buildGepgActions(
            rightMarginValue: 10,
            title: "Verify Payment",
            iconData: Icons.credit_score_rounded,
            color: Colors.orange.shade400,
            context: context,
          ),
          buildGepgActions(
            rightMarginValue: 0,
            title: "Scan to pay",
            iconData: Icons.qr_code_scanner_rounded,
            color: Colors.red.shade400,
            context: context,
          ),
        ],
      ),
    );
  }

  Widget buildGepgActions(
      {required double rightMarginValue,
      required IconData iconData,
      required String title,
      required Color color,
      required BuildContext context}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: Get.size.height * 0.145,
        height: Get.size.height * 0.145,
        margin: EdgeInsets.only(right: rightMarginValue),
        padding: const EdgeInsets.all(2),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 20,
              color: color,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
