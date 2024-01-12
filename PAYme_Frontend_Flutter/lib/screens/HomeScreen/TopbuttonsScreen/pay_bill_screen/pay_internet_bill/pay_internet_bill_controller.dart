import 'dart:convert';

import 'package:adn_pay/models/internetBill.dart';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class InternetBillController extends GetxController {
  final AuthController _authController = Get.find<AuthController>(
    tag: 'loginController',
  );
  late final Dio _dio;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _dio = Dio();
    getInternetBills();
  }

  final _isLoaded = false.obs;
  final RxList<InternetBill> _internetBillHistory =
      List<InternetBill>.empty(growable: true).obs;

  final _authenticating = false.obs;
  bool get authenticating => _authenticating.value;
  void setAuthenticating(value) => _authenticating.value = value;

  setIsloaded(loaded) => _isLoaded.value = loaded;
  bool get isloaded => _isLoaded.value;

  List<InternetBill> get internetBillHistory => _internetBillHistory;

  Future<void> saveData(Map internetBillCredentials) async {
    setAuthenticating(true);
    print(internetBillCredentials);

    _dio
        .post(
      'http://192.168.13.140:80/api/internetBill',
      data: jsonEncode(internetBillCredentials),
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

  Future<void> getInternetBills() async {
    setIsloaded(false);
    _dio
        .get(
      'http://192.168.13.140:80/api/internetBillhistory',
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
              internetBillHistory.add(InternetBill.fromJson(data));
            },
          ).toList();
          print(internetBillHistory);
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

class InternetBillOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  InternetBillOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<InternetBillOptionItems> internetbilloptionitems = [
  InternetBillOptionItems(
    Routes.PAYINTERNETBILLPERIOD,
    'https://upload.wikimedia.org/wikipedia/en/thumb/5/57/Link3_Technologies_Ltd_Logo.svg/1200px-Link3_Technologies_Ltd_Logo.svg.png',
    'Link3',
  ),
  InternetBillOptionItems(
    Routes.PAYINTERNETBILLPERIOD,
    'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/d42cd3a65593d7ee0a11',
    'Amber IT',
  ),
  InternetBillOptionItems(
    Routes.PAYINTERNETBILLPERIOD,
    'https://www.mawbiz.com.bd/application/views/module/logo_image/Carnival_Internet_logo.png',
    'Carnival',
  ),
  InternetBillOptionItems(
    Routes.PAYINTERNETBILLPERIOD,
    'https://sambd.net/wp-content/uploads/2021/09/logo.png',
    'SamOnline',
  ),
  InternetBillOptionItems(
    Routes.PAYINTERNETBILLPERIOD,
    'https://cdn.fing.io/images/isp/BD/logo/triangle_logo.png',
    'Triangle',
  ),
  InternetBillOptionItems(
    Routes.PAYINTERNETBILLPERIOD,
    'https://play-lh.googleusercontent.com/UaZJbSy18k7ZGxJWOPZDhi_uxL8Uux_JRwjlyxJiRmvIE6ornecLqMbAaWTwWsyPaXJD=s200',
    'KS Network Ltd.',
  ),
  InternetBillOptionItems(
    Routes.PAYINTERNETBILLPERIOD,
    'https://dotinternetbd.com/images/logo.png',
    'Dot Internet',
  ),
  InternetBillOptionItems(
    Routes.PAYINTERNETBILLPERIOD,
    'https://circlenetworkbd.net/wp-content/uploads/2018/12/Circle-logo.png',
    'Circle Network',
  ),
  InternetBillOptionItems(
    Routes.PAYINTERNETBILLPERIOD,
    'https://feegleejobs.com/wp-content/uploads/2019/12/48386160_1189904661177223_6135509800521302016_n-1.jpg',
    'Mazeda Network Ltd.',
  ),
  InternetBillOptionItems(
    Routes.PAYINTERNETBILLPERIOD,
    'https://cdn.fing.io/images/isp/BD/logo/antaranga_logo.png',
    'Antaranga Dot Com Ltd.',
  ),
  // InternetBillOptionItems(
  //   Routes.PAYINTERNETBILLPERIOD,
  //   'https://ftp.mcnbd.com/img/logo.png',
  //   "Millennium Computer's & Networking",
  // ),
  // InternetBillOptionItems(
  //   Routes.PAYINTERNETBILLPERIOD,
  //   'http://eurotelbd.net/wp-content/themes/eurotelbd/images/link3-logo.png',
  //   'Eurotel BD Online Ltd.',
  // ),
  // InternetBillOptionItems(
  //   Routes.PAYINTERNETBILLPERIOD,
  //   'https://deshcomm.net/wp-content/uploads/2019/01/logo-white.png',
  //   'Desh Communication',
  // ),
  // InternetBillOptionItems(
  //   Routes.PAYINTERNETBILLPERIOD,
  //   'https://pandorabd.net/wp-content/uploads/2021/04/IMG_2870-1.jpg',
  //   'Pandora Technology',
  // ),
];

List<String> internetBillPeriod = [
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
