import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/components/web_menu.dart';
import 'package:simple_fastapi_blog_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          color: Theme.of(context).colorScheme.inversePrimary,
          child: Container(
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            height: 60,
            child: Row(
              children: [
                const Spacer(),
                WebMenuItem(title: 'home'.tr, press: () {}, isActive: true),
                WebMenuItem(title: 'blog'.tr, press: () {}, isActive: false),
                WebMenuItem(title: 'album'.tr, press: () {}, isActive: false),
                WebMenuItem(title: 'series'.tr, press: () {}, isActive: false),
                WebMenuItem(title: 'contact'.tr, press: () {}, isActive: false),
                WebMenuItem(title: 'about'.tr, press: () {}, isActive: false),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
