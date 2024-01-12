import 'package:get/get.dart';

import 'pay_water_bill_controller.dart';

class WaterBillBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => WaterBillController(),
    );
  }
}
