import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/components/container_box.dart';
import 'package:simple_fastapi_blog_app/components/my_text_field.dart';
import 'package:simple_fastapi_blog_app/constants.dart';
import 'package:simple_fastapi_blog_app/controllers/user_controller.dart';
import 'package:simple_fastapi_blog_app/providers/login_provider.dart';

class LoginFrame extends StatelessWidget {
  LoginFrame({
    super.key,
  });

  final _loginProvider = Get.put(LoginProvider());
  final UserController _userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (_userController.isLogged.value) {
        return Text('already Loggin:${_userController.user.value.username}');
      } else {
        return notLoginView();
      }
    });
  }

  Widget notLoginView() {
    return ContainerBox(
        child: Column(
      children: [
        MyTextField(
          prefixIcon: const Icon(Icons.person),
          hintText: 'username'.tr,
        ),
        const SizedBox(height: kDefaultPadding),
        MyTextField(
          prefixIcon: const Icon(Icons.lock),
          hintText: 'password'.tr,
          obscure: true,
        ),
        const SizedBox(height: kDefaultPadding),
        Row(
          children: [
            Expanded(
              child: TextButton.icon(
                onPressed: () {
                  _loginProvider.fetchLogin(
                    username: "root",
                    password: "root123",
                  );
                },
                icon: const Icon(Icons.login),
                label: Text('login'.tr),
              ),
            ),
            Expanded(
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.signpost),
                label: Text('signup'.tr),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
