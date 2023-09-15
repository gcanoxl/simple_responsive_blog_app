import 'package:flutter/material.dart';
import 'package:simple_fastapi_blog_app/components/container_box.dart';
import 'package:simple_fastapi_blog_app/components/nav_bar.dart';
import 'package:simple_fastapi_blog_app/components/posts.dart';
import 'package:simple_fastapi_blog_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  Expanded(
                    flex: 2,
                    child: Posts(),
                  ),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  //Right
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        ContainerBox(child: Text("2dafasdf")),
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
