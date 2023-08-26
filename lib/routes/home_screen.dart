import 'package:flutter/material.dart';
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
                Spacer(),
                WebMenu(),
                Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
