import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/providers/post_provider.dart';

class Posts extends StatelessWidget {
  Posts({super.key});

  final PostProvider _postProvider = Get.put(PostProvider());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _postProvider.getPosts(10),
      builder: (context, snapshot) {
        print(snapshot.connectionState);
        if (snapshot.connectionState == ConnectionState.waiting) {
          //waitingView
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            //errorView
          } else if (snapshot.hasData) {
            // data
          }
        }
        return const Text("1");
      },
    );
  }
}
