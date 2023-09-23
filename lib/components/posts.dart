import 'package:flutter/material.dart';
import 'package:simple_fastapi_blog_app/components/post_item.dart';
import 'package:simple_fastapi_blog_app/models/post.dart';
import 'package:simple_fastapi_blog_app/providers/post_provider.dart';

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
