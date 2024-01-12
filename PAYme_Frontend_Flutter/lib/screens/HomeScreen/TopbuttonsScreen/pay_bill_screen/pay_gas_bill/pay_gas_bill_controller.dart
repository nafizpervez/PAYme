import 'dart:convert';

import 'package:adn_pay/models/gasBill.dart';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class GasBillController extends GetxController {
  final AuthController _authController = Get.find<AuthController>(
    tag: 'loginController',
  );
  late final Dio _dio;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _dio = Dio();
    geGasBills();
  }

  final _isLoaded = false.obs;
  final RxList<GasBill> _gasBillHistory =
      List<GasBill>.empty(growable: true).obs;

  final _authenticating = false.obs;
  bool get authenticating => _authenticating.value;
  void setAuthenticating(value) => _authenticating.value = value;

  setIsloaded(loaded) => _isLoaded.value = loaded;
  bool get isloaded => _isLoaded.value;

  List<GasBill> get gasBillHistory => _gasBillHistory;

  Future<void> saveData(Map gasBillCredentials) async {
    setAuthenticating(true);
    print(gasBillCredentials);

    _dio
        .post(
      'http://192.168.13.140:80/api/gasBill',
      data: jsonEncode(gasBillCredentials),
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

  Future<void> geGasBills() async {
    setIsloaded(false);
    _dio
        .get(
      'http://192.168.13.140:80/api/gasBillhistory',
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
              gasBillHistory.add(GasBill.fromJson(data));
            },
          ).toList();
          // print(gasBillHistory);
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

class GasBillOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  GasBillOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<GasBillOptionItems> gasbilloptionitems = [
  GasBillOptionItems(
    Routes.PAYGASBILLPERIOD,
    'https://baplc.org/upload/Titas%20Gas.jpg',
    'Titas Gas Postpaid (Non Metered)',
  ),
  GasBillOptionItems(
    Routes.PAYGASBILLPERIOD,
    'https://baplc.org/upload/Titas%20Gas.jpg',
    'Titas Gas Postpaid (Metered)',
  ),
  GasBillOptionItems(
    Routes.PAYGASBILLPERIOD,
    'https://bangladeshpost.net/webroot/uploads/featureimage/2020-04/5e948b77ec650.jpg',
    'Karnaphuli Gas',
  ),
  GasBillOptionItems(
    Routes.PAYGASBILLPERIOD,
    'https://www.energybangla.com/wp-content/uploads/2016/08/jalalabad-gas-company-logo.jpg',
    'Jalalabad Gas',
  ),
  GasBillOptionItems(
    Routes.PAYGASBILLPERIOD,
    'https://www.tbsnews.net/sites/default/files/styles/author/public/organization/logo/bakhrabad-gas-system-ltd.jpg?itok=SrEeQhW9&timestamp=1613621372',
    'Bakhrabad Gas',
  ),
];

List<String> gasBillPeriod = [
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
