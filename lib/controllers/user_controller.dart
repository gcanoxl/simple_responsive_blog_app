import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:simple_fastapi_blog_app/models/index.dart';

// ignore: constant_identifier_names
const String TOKEN = "token";

class UserController extends GetxController {
  final isLogged = false.obs;
  final user = UserModel().obs;

  @override
  onInit() {
    updateLoginState();
    super.onInit();
  }

  updateLoginState() async {
    final box = GetStorage();
    final jsonUser = await box.read("user");
    if (jsonUser != null) {
      isLogged.value = true;
      user.value = UserModel.fromJson(jsonUser);
    } else {
      isLogged.value = false;
    }
  }

  login(UserModel user) async {
    final box = GetStorage();
    await box.write("user", user.toJson());
    await updateLoginState();
  }
}
