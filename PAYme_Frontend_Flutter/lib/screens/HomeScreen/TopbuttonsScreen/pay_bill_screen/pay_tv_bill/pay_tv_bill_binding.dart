import 'package:get/get.dart';

import 'pay_tv_bill_controller.dart';

class TvBillBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => TVBillController(),
    );
  }
}
