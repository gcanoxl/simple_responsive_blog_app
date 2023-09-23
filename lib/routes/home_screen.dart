import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/components/login_frame.dart';
import 'package:simple_fastapi_blog_app/components/nav_bar.dart';
import 'package:simple_fastapi_blog_app/components/posts.dart';
import 'package:simple_fastapi_blog_app/constants.dart';
import 'package:simple_fastapi_blog_app/controllers/user_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final UserController _authManger = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            Container(
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Left
                  const Expanded(
                    flex: 2,
                    child: Posts(),
                  ),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  //Right
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        LoginFrame(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
