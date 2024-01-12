import 'package:adn_pay/models/user.dart';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Login_auth/login_controller.dart';

class ProfileController extends GetxController {
  final AuthController _authController = Get.find<AuthController>(
    tag: 'loginController',
  );

  late final Dio _dio;

  late Rx<User> _user;

  PlatformFile? _attachment;

  final _profileUpdating = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    _user = _authController.user.obs;
    _dio = Dio();
    setAttachment(null);
  }

  PlatformFile? get attachment => _attachment;
  void setAttachment(value) => _attachment = value;

  bool get profileUpdating => _profileUpdating.value;
  void setProfileUpdating(load) => _profileUpdating.value = load;

  User get user => _user.value;
  void setUser(value) => _user.value = value;

  Future<void> updateProfile(Map<String, dynamic> updatableData) async {
    setProfileUpdating(true);
    final fromd = FormData.fromMap(updatableData);

    // if (attachment != null) {
    //   fromd.files.add(
    //     MapEntry(
    //       'avatar',
    //       MultipartFile.fromBytes(attachment!.bytes!, filename: 'avatar'),
    //     ),
    //   );
    //   fromd.fields.add(
    //     MapEntry('attachment_type', attachment!.extension!),
    //   );
    // }

    Options options = Options(
      // contentType: 'multipart/form-data',
      headers: {
        'Authorization': 'Bearer ${_authController.token}',
      },
    );

    try {
      await _dio
          .post(
        'http://192.168.13.140:80/api/update/users/' + user.id.toString(),
        data: fromd,
        options: options,
      )
          .then((value) {
        if (value.statusCode == 200) {
          print(value.data);
          final User user = User.fromJson(value.data);

          _authController.setUser(user);
          setUser(user);
          setProfileUpdating(false);
          Get.snackbar('Success', 'Information Successfull Updated');
          Get.offNamed(Routes.PROFILE);
          setAttachment(null);
        } else {
          setProfileUpdating(false);
          Get.snackbar('Error', 'Data Could not be Updated 1');
        }
      }).whenComplete(() => setProfileUpdating(false));
    } catch (e) {
      print(e);
      setProfileUpdating(false);
      Get.snackbar('Error', 'Data Could not be Updated 2');
    }
  }
}
