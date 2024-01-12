import 'package:get/get.dart';
import '../../routes/app_pages.dart';
import '../Login_auth/login_binding.dart';
import '../Login_auth/login_controller.dart';
import '../Login_auth/login_screen.dart';

class DashMiddleware extends GetMiddleware {
  final AuthController _loginController = Get.find<AuthController>(
    tag: 'authfirst',
  );

  @override
  GetPage? onPageCalled(GetPage? page) {
    if (_loginController.authenticated) {
      return super.onPageCalled(page);
    } else {
      return super.onPageCalled(
        GetPage(
          title: 'Login',
          name: Routes.LOGIN,
          binding: AuthBinding(),
          page: () => const LoginADNPAY(),
        ),
      );
    }
  }
}
