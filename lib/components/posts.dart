import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/components/loading_widget.dart';
import 'package:simple_fastapi_blog_app/components/post_item.dart';
import 'package:simple_fastapi_blog_app/constants.dart';
import 'package:simple_fastapi_blog_app/models/index.dart';
import 'package:simple_fastapi_blog_app/providers/post_provider.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider = Get.put(PostProvider());
    return FutureBuilder(
      future: postProvider.getPosts(10),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingWidget();
        } else {
          if (snapshot.data!.isOk) {
            List<PostModel> posts = snapshot.data!.body!;
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                posts.length,
                (index) => PostItem(post: posts[index]),
              ),
            );
          } else {
            return Container(
              margin: const EdgeInsets.all(kDefaultPadding),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Error: ",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: snapshot.data!.statusText!,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            );
          }
        }
      },
    );
  }
}
