import 'package:get/get.dart';

import 'pay_education_bill_controller.dart';

class EducationBillBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => EducationBillController(),
    );
  }
}
