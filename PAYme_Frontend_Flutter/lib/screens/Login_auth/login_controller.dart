import 'dart:convert';
import 'package:adn_pay/constants/constants.dart';
import 'package:adn_pay/models/user.dart';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:dio/dio.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/route_manager.dart';

class AuthController extends GetxController {
  late final Dio _dio;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _dio = Dio();
    _user = null;
  }

  //observables
  final _isLoggedIn = false.obs;
  final _authenticating = false.obs;
  final _loggingOut = false.obs;
  RxString error = ''.obs;
  RxString parserror = ''.obs;
  User? _user;

  // Rx<User?> _user = null.obs;
  String? _token;

  bool get authenticated => _isLoggedIn.value;
  void setAuthenticated(value) => _isLoggedIn.value = value;

  bool get authenticating => _authenticating.value;
  void setAuthenticating(value) => _authenticating.value = value;

  bool get loggingOut => _loggingOut.value;
  void setLoggingOut(value) => _loggingOut.value = value;

  User get user => _user!;
  void setUser(User? user) => _user = user;

  String get token => _token!;

  Future<void> login(Map loginCredential) async {
    setAuthenticating(true);
    // print(loginCredential);
    try {
      _dio
          .post(
        'http://192.168.13.140:80/api/login',
        data: jsonEncode(loginCredential),
      )
          .then(
        (value) {
          if (value.statusCode != 200) {
            setAuthenticating(false);
            Get.snackbar('Login Failed', 'Wrong Creadentials');
          } else {
            if (value.data['status'] == 'error') {
              _token = null;
              setAuthenticating(false);
              Get.snackbar('Login Failed', 'Wrong Creadentials');
            } else {
              _token = value.data['token'];
              if (_token != null) {
                setUser(
                  User.fromJson(
                    value.data['user'],
                  ),
                );
                setAuthenticated(true);
                Get.offNamed(Routes.INITIAL);
                Get.snackbar('Welcome Back', user.name);
                // print(value.data['user']);
              }
            }
          }
        },
      ).onError(
        (error, stackTrace) {
          setAuthenticating(false);
          Get.snackbar('Login Failed', 'Wrong Creadentials');
        },
      ).whenComplete(
        () => setAuthenticating(false),
      );
    } catch (e) {
      Get.snackbar('Login Failed', 'Wrong Creadentials');
      print(e.toString());
    }
  }

  Future<void> preview(Map loginCredential) async {
    setAuthenticating(true);
    // print(loginCredential);
    try {
      _dio
          .get(
        'http://192.168.13.140:80/api/user',
      )
          .then(
        (value) {
          if (value.statusCode != 200) {
            setAuthenticating(false);
            Get.snackbar('Task Error', 'No User Viewed');
          } else {
            if (value.data['status'] == 'error') {
              _token = null;
              setAuthenticating(false);
              Get.snackbar('Task Error', 'No User Viewed');
            } else {
              _token = value.data['token'];
              if (_token != null) {
                setUser(
                  User.fromJson(
                    value.data['user'],
                  ),
                );
                // print(value.data['user']);
              }
              setAuthenticated(true);
              Get.offNamed(Routes.INITIAL);
              Get.snackbar('Welcome Back', user.name);
            }
          }
        },
      ).whenComplete(
        () => setAuthenticating(false),
      );
    } catch (e) {
      Get.snackbar('Login Failed', 'Wrong Creadentials');
      print(e.toString());
    }
  }

  Future<void> register(Map loginCredential) async {
    setAuthenticating(true);
    print(loginCredential);

    _dio
        .post(
      'http://192.168.13.140:80/api/register',
      data: jsonEncode(loginCredential),
    )
        .then(
      (value) {
        print(value);
        if (value.statusCode != 200) {
          setAuthenticating(false);
          Get.snackbar('Registration Failed', 'Wrong Creadentials');
        } else {
          if (value.data['status'] == 'error') {
            setAuthenticating(false);
            Get.snackbar('Registration Failed', 'Wrong Creadentials');
          } else {
            Get.offAllNamed(
              Routes.LOGIN,
            );
            Get.snackbar(
              'Congratulation',
              'Account Succesfully Registered',
            );
          }
        }
      },
    ).onError(
      (error, stackTrace) {
        Get.snackbar('Login Failed', 'Wrong Creadentials');
        print(error.toString());
      },
    ).whenComplete(
      () => setAuthenticating(false),
    );
  }

  Future<void> getUser(String token) async {
    setAuthenticating(true);
    try {
      _dio
          .get(
        '${Constants.baseApiUrl}user_auth',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      )
          .then(
        (value) {
          if (value.statusCode != 200) {
            Get.snackbar('Login Failed', 'Wrong Creadentials');
          } else {
            if (value.data['status'] == 'error') {
              setUser(
                null,
              );
              Get.snackbar('Login Failed', 'Wrong Creadentials');
            } else {
              setUser(
                User.fromJson(
                  value.data['data'],
                ),
              );

              setAuthenticated(true);

              return _user;
            }
          }
        },
      ).onError(
        (error, stackTrace) {
          setAuthenticating(false);
          return null;
        },
      ).whenComplete(() {
        Future.delayed(
          const Duration(milliseconds: 200),
        ).then(
          (value) {
            if (_user != null) {
              Get.offAllNamed(
                Routes.INITIAL,
              );
            }
          },
        ).whenComplete(
          () => setAuthenticating(false),
        );
      });
    } catch (e) {
      setAuthenticating(false);
      Get.snackbar('Login Failed', 'Wrong Creadentials');
    }
  }

  Future<void> logout() async {
    if (authenticated) {
      setLoggingOut(true);
      try {
        _dio
            .get(
          'http://192.168.13.140:80/api/logout',
          options: Options(
            headers: {'Authorization': 'Bearer $token'},
          ),
        )
            .then(
          (value) {
            if (value.statusCode != 200) {
              setLoggingOut(false);
              Get.snackbar('Login Failed', 'Wrong Creadentials');
            } else {
              setLoggingOut(false);
              cleanUp();
            }
          },
        );
      } catch (e) {
        setLoggingOut(false);
        Get.snackbar('Login Failed', 'Wrong Creadentials');
      }
    }
  }

  cleanUp() {
    _user = null;
    _token = null;
    _isLoggedIn.value = false;
    setAuthenticating(false);
    setAuthenticated(false);

    Get.offAllNamed(Routes.LOGIN);
  }
}
