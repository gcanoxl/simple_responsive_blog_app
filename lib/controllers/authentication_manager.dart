import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// ignore: constant_identifier_names
const String TOKEN = "token";

class AuthenticationManager extends GetxController with CacheManager {
  final isLogged = false.obs;

  @override
  onInit() {
    String? token = getToken();
    if (token != null) {
      isLogged.value = true;
    } else {
      isLogged.value = false;
    }
    super.onInit();
  }
}

mixin CacheManager {
  String? getToken() {
    final box = GetStorage();
    return box.read(TOKEN);
  }
}
