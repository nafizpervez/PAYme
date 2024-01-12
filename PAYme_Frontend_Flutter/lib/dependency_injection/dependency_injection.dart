import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() async {
    Get.put<AuthController>(
      AuthController(),
      tag: 'loginController',
      permanent: true,
    );
  }
}
