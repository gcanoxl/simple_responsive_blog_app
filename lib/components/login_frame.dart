import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/components/container_box.dart';
import 'package:simple_fastapi_blog_app/components/my_test_field.dart';
import 'package:simple_fastapi_blog_app/constants.dart';

class LoginFrame extends StatelessWidget {
  const LoginFrame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                onPressed: () {},
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
