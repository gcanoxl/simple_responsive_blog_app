import 'dart:io';

import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/controllers/user_controller.dart';
import 'package:simple_fastapi_blog_app/models/index.dart';
import 'package:simple_fastapi_blog_app/providers/base_provider.dart';

class LoginProvider extends BaseProvider {
  final String loginUrl = "/api/users/login";
  final UserController _userController = Get.find();
  Future<UserModel?> fetchLogin({
    required String username,
    required String password,
  }) async {
    final response = await post(loginUrl, {
      "username": username,
      "password": password,
    });
    if (response.statusCode == HttpStatus.ok) {
      final model = UserModel.fromJson(response.body);
      _userController.login(model);
      return model;
    }
    return null;
  }
}
