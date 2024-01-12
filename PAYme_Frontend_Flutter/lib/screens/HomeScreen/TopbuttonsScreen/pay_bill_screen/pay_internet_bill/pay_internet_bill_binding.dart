import 'package:get/get.dart';

import 'pay_internet_bill_controller.dart';

class InternetBillBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => InternetBillController(),
    );
  }
}
