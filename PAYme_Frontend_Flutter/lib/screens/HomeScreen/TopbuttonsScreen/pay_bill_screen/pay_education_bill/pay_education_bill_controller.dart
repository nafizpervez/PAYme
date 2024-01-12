import 'dart:convert';

import 'package:adn_pay/models/educationBill.dart';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class EducationBillController extends GetxController {
  final AuthController _authController = Get.find<AuthController>(
    tag: 'loginController',
  );
  late final Dio _dio;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _dio = Dio();
    getEducationBills();
  }

  final _isLoaded = false.obs;
  final RxList<EducationBill> _educationBillHistory =
      List<EducationBill>.empty(growable: true).obs;

  final _authenticating = false.obs;
  bool get authenticating => _authenticating.value;
  void setAuthenticating(value) => _authenticating.value = value;

  setIsloaded(loaded) => _isLoaded.value = loaded;
  bool get isloaded => _isLoaded.value;

  List<EducationBill> get educationBillHistory => _educationBillHistory;

  Future<void> saveData(Map educationBillCredentials) async {
    setAuthenticating(true);
    print(educationBillCredentials);

    _dio
        .post(
      'http://192.168.13.140:80/api/educationBill',
      data: jsonEncode(educationBillCredentials),
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

  Future<void> getEducationBills() async {
    setIsloaded(false);
    _dio
        .get(
      'http://192.168.13.140:80/api/educationBillhistory',
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
              educationBillHistory.add(EducationBill.fromJson(data));
            },
          ).toList();
          // print(educationBillHistory);
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

class EducationBillOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  EducationBillOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<EducationBillOptionItems> educationbilloptionitems = [
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://www.bssnews.net/assets/news_photos/2021/09/30/image-20226-1633014211.jpg',
    'XI Class Admission',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://upload.wikimedia.org/wikipedia/en/thumb/8/86/University_of_Chittagong_logo.svg/1200px-University_of_Chittagong_logo.svg.png',
    'University of Chittagong',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'http://www.observerbd.com/2018/06/27/1530113340.jpg',
    'BTEB',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwWJj9CNm04TUDdEeGerGJjhTBJFevyY5Ms3cbdsVDwN8pdDazM_rYgBpxe3J0SosqM-c&usqp=CAU',
    'BUET',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://jobstestbd.com/wp-content/uploads/2020/11/DTE-logo.jpg',
    'DTE',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://upload.wikimedia.org/wikipedia/commons/5/51/LogoAust.jpg',
    'AUST',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://yt3.ggpht.com/ytc/AKedOLRYRuxrJsyxe_lqsSfcgl7i5wmzpNbjCwReLfsw=s900-c-k-c0x00ffffff-no-rj',
    'Uttara University',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_gZyUwERXLm67DjbgqAfUytSDgzUJjhQouG6JYt7rephbfz9Vy-O6LIbrp1MQKqbyI0U&usqp=CAU',
    'Varendra University',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://upload.wikimedia.org/wikipedia/en/5/5d/Logo_of_DRMC.png',
    'Dhaka Residential Model College',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh_eB-P-BGtSMQjX-Y4JLFt3XKnkX5CltiuOPp6EiKgQZGiatCrKp3HG7H3r4L5ISSSYE&usqp=CAU',
    'Eden Mohila College',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYeWtSha7U_7TfkAGZc1OKRlDvn41WHHRSQAoz2ee1O17qg9-vxq1pQSFrAh0mSABDqlQ&usqp=CAU',
    'Dhaka Commerce College',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT43lRnO1SBS6LUOWPicbHVcUIIzL7cb5bknLfLNooBWZz-rU5bTFkxYhl5qIljaDZWLqQ&usqp=CAU',
    'GPCPSC',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'http://www.rcpsc.edu.bd/media/ico/rcpsc-logo.png',
    'RCPSC',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://play-lh.googleusercontent.com/8WZvkmzronWNNChip845S-SBwgOKPaeJWer2xEziFaILCgHnTin18IfltW0TemIgcg',
    'BMET',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://upload.wikimedia.org/wikipedia/commons/2/2a/%E0%A6%AC%E0%A6%BF%E0%A6%A1%E0%A6%BF%E0%A6%87%E0%A6%89.png',
    'Bangabondhu Digital University',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://amaradmission.com/CompanyLogo/UCC/logo.png',
    'UCC',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://mcpsc.edu.bd/images/Logo_burned.png',
    'MCPSC',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://lh3.googleusercontent.com/p/AF1QipO0MXrKgFwtcZFgDmdK5px1VLLd84Oq7sIXVRzw=w1080-h608-p-no-v0',
    'Eduman',
  ),
  EducationBillOptionItems(
    Routes.PAYEDUCATIONBILLPERIOD,
    'https://urquery.com/storage/2021/01/Admission%20SOS%20Hermann%20Gmeiner%20College.jpg',
    'SOS Hermann Gmeiner College',
  ),
];

List<String> educationBillPeriod = [
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
