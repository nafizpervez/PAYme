import 'dart:convert';

import 'package:adn_pay/models/tvBill.dart';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class TVBillController extends GetxController {
  final AuthController _authController = Get.find<AuthController>(
    tag: 'loginController',
  );
  late final Dio _dio;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _dio = Dio();
    getTvBills();
  }

  final _isLoaded = false.obs;
  final RxList<TvBill> _tvBillHistory = List<TvBill>.empty(growable: true).obs;

  final _authenticating = false.obs;
  bool get authenticating => _authenticating.value;
  void setAuthenticating(value) => _authenticating.value = value;

  setIsloaded(loaded) => _isLoaded.value = loaded;
  bool get isloaded => _isLoaded.value;

  List<TvBill> get tvBillHistory => _tvBillHistory;

  Future<void> saveData(Map tvBillCredentials) async {
    setAuthenticating(true);
    print(tvBillCredentials);

    _dio
        .post(
      'http://192.168.13.140:80/api/tvBill',
      data: jsonEncode(tvBillCredentials),
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

  Future<void> getTvBills() async {
    setIsloaded(false);
    _dio
        .get(
      'http://192.168.13.140:80/api/tvBillhistory',
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
              tvBillHistory.add(TvBill.fromJson(data));
            },
          ).toList();
          print(tvBillHistory);
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

class TvBillOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  TvBillOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<TvBillOptionItems> tvbilloptionitems = [
  TvBillOptionItems(
    Routes.PAYTVBILLPERIOD,
    'https://www.tbsnews.net/sites/default/files/styles/big_3/public/images/2019/10/31/71197970_987254578280025_5151448242281512960_o.jpg?itok=FVOE8sAA',
    'Akash DTH',
  ),
  TvBillOptionItems(
    Routes.PAYTVBILLPERIOD,
    'https://www.bengaldigital.tv/user/images/logo.png',
    'Bengal Digital',
  ),
  TvBillOptionItems(
    Routes.PAYTVBILLPERIOD,
    'https://redtaildesign.com/wp-content/uploads/2019/01/2019-01-17_bumblee_yelloweyes.jpg',
    'BumbellBee',
  ),
  TvBillOptionItems(
    Routes.PAYTVBILLPERIOD,
    'https://www.bengaldigital.tv/user/uploads/2016/12/sectionsres-6.png',
    'Nation Electronics and Cable Networks',
  ),
];

List<String> tvbillperiod = [
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
