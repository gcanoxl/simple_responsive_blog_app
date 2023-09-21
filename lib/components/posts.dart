import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/components/container_box.dart';
import 'package:simple_fastapi_blog_app/constants.dart';
import 'package:simple_fastapi_blog_app/models/post.dart';
import 'package:simple_fastapi_blog_app/providers/post_provider.dart';
import 'package:simple_fastapi_blog_app/routes/detail_screen.dart';

class Posts extends StatefulWidget {
  const Posts({
    super.key,
  });

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  final List<Post> posts = [];

  @override
  void initState() {
    var data = PostProvider().getPosts(10);
    data.then((value) {
      setState(() {
        posts.addAll(value.body!);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        posts.length,
        (index) => PostItem(post: posts[index]),
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.post,
  });
  final Post post;

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
                Get.to(DetailScreen(), arguments: post);
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
