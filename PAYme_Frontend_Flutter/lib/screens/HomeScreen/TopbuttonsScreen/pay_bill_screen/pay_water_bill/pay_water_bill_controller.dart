import 'dart:convert';
import 'package:adn_pay/models/waterbill.dart';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class WaterBillController extends GetxController {
  final AuthController _authController = Get.find<AuthController>(
    tag: 'loginController',
  );

  late final Dio _dio;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _dio = Dio();
    getWaterBills();
  }

  final _isLoaded = false.obs;
  final RxList<WaterBill> _waterBillHistory =
      List<WaterBill>.empty(growable: true).obs;

  final _authenticating = false.obs;
  bool get authenticating => _authenticating.value;
  void setAuthenticating(value) => _authenticating.value = value;

  setIsloaded(loaded) => _isLoaded.value = loaded;
  bool get isloaded => _isLoaded.value;

  // setIsloaded(loaded) => _waterBillHistory.value = loaded;
  List<WaterBill> get waterBillHistory => _waterBillHistory;

  Future<void> saveData(Map waterBillCredentials) async {
    setAuthenticating(true);
    print(waterBillCredentials);

    _dio
        .post(
      'http://192.168.13.140:80/api/waterBill',
      data: jsonEncode(waterBillCredentials),
      options: Options(
        headers: {'Authorization': 'Bearer ${_authController.token}'},
      ),
    )
        .then(
      (value) {
        print(value);
        if (value.statusCode != 200) {
          setAuthenticating(false);
          Get.snackbar('Error', 'Entry Failed');
        } else {
          if (value.data['status'] == 'error') {
            setAuthenticating(false);
            Get.snackbar('Error', 'Entry Failed');
          } else {
            Get.offAllNamed(
              Routes.BILLCONFIRMATION,
            );
            Get.snackbar(
              'Success',
              'Entry Successfull',
            );
          }
        }
      },
    ).onError(
      (error, stackTrace) {
        Get.snackbar('Error', 'Entry Failed');
        print(error.toString());
      },
    ).whenComplete(
      () => setAuthenticating(false),
    );
  }

  Future<void> getWaterBills() async {
    setIsloaded(false);
    _dio
        .get(
      'http://192.168.13.140:80/api/waterBillhistory',
      options: Options(
        headers: {'Authorization': 'Bearer ${_authController.token}'},
      ),
    )
        .then(
      (value) {
        if (value.statusCode == 200) {
          // print(value.data['data']);
          // _waterBillHistory.clear();
          value.data['data'].map(
            (data) {
              // print(data);
              // print(WaterBill.fromJson(data));
              waterBillHistory.add(WaterBill.fromJson(data));
            },
          ).toList();
          print(waterBillHistory);
          // _waterBillHistory.sort(
          //     (empA, empB) => empA.organization.compareTo(empB.organization));
        } else {
          print(value.statusMessage);
        }
      },
    ).whenComplete(
      () => setIsloaded(true),
    );
  }
}

class WaterBillOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  WaterBillOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<WaterBillOptionItems> waterbilloptionitems = [
  WaterBillOptionItems(
    Routes.PAYWATERBILLPERIOD,
    'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Dhaka_WASA_logo.jpeg/220px-Dhaka_WASA_logo.jpeg',
    'Dhaka WASA',
  ),
  WaterBillOptionItems(
    Routes.PAYWATERBILLPERIOD,
    'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Dhaka_WASA_logo.jpeg/220px-Dhaka_WASA_logo.jpeg',
    'Chattogram WASA',
  ),
  WaterBillOptionItems(
    Routes.PAYWATERBILLPERIOD,
    'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Dhaka_WASA_logo.jpeg/220px-Dhaka_WASA_logo.jpeg',
    'Rajshahi WASA',
  ),
  WaterBillOptionItems(
    Routes.PAYWATERBILLPERIOD,
    'https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Dhaka_WASA_logo.jpeg/220px-Dhaka_WASA_logo.jpeg',
    'Khulna WASA',
  ),
];

List<String> waterbillperiod = [
  'February 2022',
  'March 2022',
  'April 2022',
  'May 2022',
  'June 2022',
  'July 2022',
  'August 2022',
  'September 2022',
  'October 2022',
  'November 2022',
  'December 2022',
];
