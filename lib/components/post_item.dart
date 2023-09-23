import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/components/container_box.dart';
import 'package:simple_fastapi_blog_app/constants.dart';
import 'package:simple_fastapi_blog_app/models/index.dart';

import '../routes/detail_screen.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.post,
  });
  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return ContainerBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () {
                Get.to(const DetailScreen(), arguments: post);
              },
              child: Text(
                post.title,
                style: const TextStyle(fontSize: 22),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Text(
            "Created At: 2022-02-29",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Text(
            post.content,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Views: ${post.views}",
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment),
                // color: Theme.of(context).colorScheme.inversePrimary,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_comment),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.thumb_up),
              ),
            ],
          )
        ],
      ),
    );
  }
}
