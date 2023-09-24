import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/components/container_box.dart';
import 'package:simple_fastapi_blog_app/components/my_text_field.dart';
import 'package:simple_fastapi_blog_app/constants.dart';
import 'package:simple_fastapi_blog_app/controllers/user_controller.dart';
import 'package:simple_fastapi_blog_app/models/index.dart';
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
        return loggedInView(_userController.user.value);
      } else {
        return notLoginView();
      }
    });
  }

  Widget loggedInView(UserModel user) {
    return ContainerBox(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset("assets/imgs/avatar.png"),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          user.is_admin ? 'admin'.tr : 'user'.tr,
                          style: TextStyle(
                            fontSize: 16,
                            color: user.is_admin ? Colors.red : Colors.yellow,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: kDefaultPadding / 2),
                        Text(
                          "id: ${user.id}",
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Text(
                      user.username,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          // Logout Button
          Row(
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info),
                label: Text('profile'.tr),
              ),
              TextButton.icon(
                onPressed: () {
                  _userController.logout();
                },
                icon: const Icon(Icons.logout),
                label: Text('logout'.tr),
              ),
            ],
          )
        ],
      ),
    );
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
