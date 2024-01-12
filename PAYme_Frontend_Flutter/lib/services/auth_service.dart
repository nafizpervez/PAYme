import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:localstorage/localstorage.dart';
import 'package:permission_handler/permission_handler.dart';

class AuthService extends GetxService {
  Future<void> storeToken(String token) async {
    final storageBox = LocalStorage('tokenStorage');
    await GetStorage.init().then((value) {
      if (GetPlatform.isAndroid || GetPlatform.isIOS) {
        Permission.storage.request().isGranted.then((value) {
          storageBox.setItem('token', token);
        });
      } else {
        storageBox.setItem('token', token);
      }
    });
  }

  Future<String?> retriveToken() async {
    final storageBox = LocalStorage('tokenStorage');
    // print(storageBox.getItem('token').toString());
    await GetStorage.init().then((value) {
      if (GetPlatform.isAndroid || GetPlatform.isIOS) {
        Permission.storage.request().isGranted.then((value) {
          return storageBox.getItem('token').toString();
        });
      } else {
        return storageBox.getItem('token').toString();
      }
    });
  }

  Future<void> deleteToken() async {
    final storageBox = LocalStorage('tokenStorage');
    await GetStorage.init().then((value) {
      if (GetPlatform.isAndroid || GetPlatform.isIOS) {
        Permission.storage.request().isGranted.then((value) {
          storageBox.clear();
        });
      } else {
        storageBox.clear();
      }
    });
  }
}
