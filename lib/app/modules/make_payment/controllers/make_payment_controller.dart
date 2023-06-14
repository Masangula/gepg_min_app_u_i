import 'package:gepg_min_app_u_i/app/utils/app_constants.dart';
import 'package:get/get.dart';

class MakePaymentController extends GetxController {
  var service = Get.arguments["service"];
  bool? isAprocess;
  String appBarTitle = "";
  InstitutionServices? institutionService;
  GepgProcesses? gepgProcess;

  final count = 0.obs;
  @override
  void onInit() {
    computeServiceActions();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void computeServiceActions() {
    isAprocess = service.toString().contains("GepgProcesses");
    if (isAprocess!) {
      gepgProcess = service;
      switch (gepgProcess) {
        case GepgProcesses.makePayment:
          appBarTitle = "Make Payment";
          break;
        case GepgProcesses.verifPayment:
          appBarTitle = "Verify Payment";
          break;
        default:
          appBarTitle = "Make Payment";
          break;
      }
    } else {
      institutionService = service;
      switch (institutionService) {
        case InstitutionServices.parking:
          appBarTitle = "Tarura Payment";
          break;
        case InstitutionServices.luku:
          appBarTitle = "Luku Payment";
          break;
        default:
          appBarTitle = "Make Payment";
          break;
      }
    }
  }

  void increment() => count.value++;
}
