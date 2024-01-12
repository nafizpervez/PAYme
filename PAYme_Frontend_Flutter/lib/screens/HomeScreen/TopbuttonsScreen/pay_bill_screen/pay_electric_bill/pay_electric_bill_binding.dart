import 'package:get/get.dart';

import 'pay_electric_bill_controller.dart';

class ElectricBillBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ElectricBillController(),
    );
  }
}
