import 'package:get/get.dart';

import '../Login_auth/login_controller.dart';
import 'profile_controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ProfileController(),
    );
  }
}
