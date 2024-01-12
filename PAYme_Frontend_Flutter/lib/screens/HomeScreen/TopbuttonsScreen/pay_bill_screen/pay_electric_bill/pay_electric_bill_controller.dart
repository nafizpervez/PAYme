import 'dart:convert';

import 'package:adn_pay/models/electricityBill.dart';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ElectricBillController extends GetxController {
  final AuthController _authController = Get.find<AuthController>(
    tag: 'loginController',
  );
  late final Dio _dio;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _dio = Dio();
    getElectricBills();
  }

  final _isLoaded = false.obs;
  final RxList<ElectricityBill> _electricBillHistory =
      List<ElectricityBill>.empty(growable: true).obs;

  final _authenticating = false.obs;
  bool get authenticating => _authenticating.value;
  void setAuthenticating(value) => _authenticating.value = value;

  setIsloaded(loaded) => _isLoaded.value = loaded;
  bool get isloaded => _isLoaded.value;

  List<ElectricityBill> get electricBillHistory => _electricBillHistory;

  Future<void> saveData(Map electricBillCredentials) async {
    setAuthenticating(true);
    print(electricBillCredentials);

    _dio
        .post(
      'http://192.168.13.140:80/api/electricityBill',
      data: jsonEncode(electricBillCredentials),
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

  Future<void> getElectricBills() async {
    setIsloaded(false);
    _dio
        .get(
      'http://192.168.13.140:80/api/electricityBillhistory',
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
              electricBillHistory.add(ElectricityBill.fromJson(data));
            },
          ).toList();
          // print(electricBillHistory);
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

class ElectricBillOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  ElectricBillOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<ElectricBillOptionItems> electricbilloptionitems = [
  ElectricBillOptionItems(
    Routes.PAYPREPAIDDESCO,
    'https://www.thefinancialexpress.com.bd/uploads/1622379202.jpg',
    'DESCO Prepaid',
  ),
  ElectricBillOptionItems(
    Routes.PAYPOSTPAIDDESCO,
    'https://www.thefinancialexpress.com.bd/uploads/1622379202.jpg',
    'DESCO Postpaid',
  ),
  ElectricBillOptionItems(
    Routes.PAYPREPAIDNESCO,
    'https://upload.wikimedia.org/wikipedia/commons/4/45/Logo_of_NESCO.png',
    'NESCO Prepaid',
  ),
  ElectricBillOptionItems(
    Routes.PAYPOSTPAIDNESCO,
    'https://upload.wikimedia.org/wikipedia/commons/4/45/Logo_of_NESCO.png',
    'NESCO Postpaid',
  ),
  ElectricBillOptionItems(
    Routes.PAYPREPAIDDPDC,
    'https://www.dpdc.org.bd/images/dpdc.png',
    'DPDC Prepaid',
  ),
  ElectricBillOptionItems(
    Routes.PAYPOSTPAIDDPDC,
    'https://www.dpdc.org.bd/images/dpdc.png',
    'DPDC Postpaid',
  ),
  ElectricBillOptionItems(
    Routes.PAYPREPAIDBPDB,
    'https://media-eng.dhakatribune.com/uploads/2016/08/Bangladesh-power-development-board-job-circular.jpg',
    'BPDB Prepaid',
  ),
  ElectricBillOptionItems(
    Routes.PAYPOSTPAIDBPDB,
    'https://media-eng.dhakatribune.com/uploads/2016/08/Bangladesh-power-development-board-job-circular.jpg',
    'BPDB Postpaid',
  ),
  ElectricBillOptionItems(
    Routes.PAYPREPAIDWESTZONE,
    'https://bangladeshpost.net/webroot/uploads/featureimage/2021-09/6153481b456dc.jpg',
    'Westzone Prepaid',
  ),
  ElectricBillOptionItems(
    Routes.PAYPOSTPAIDWESTZONE,
    'https://bangladeshpost.net/webroot/uploads/featureimage/2021-09/6153481b456dc.jpg',
    'Westzone Postpaid',
  ),
];

List<String> electricPostpaidBillPeriod = [
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
