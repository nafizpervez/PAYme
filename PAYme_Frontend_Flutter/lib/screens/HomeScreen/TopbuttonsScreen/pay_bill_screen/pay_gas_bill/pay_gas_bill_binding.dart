import 'package:get/get.dart';

import 'pay_gas_bill_controller.dart';

class GasBillBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => GasBillController(),
    );
  }
}
