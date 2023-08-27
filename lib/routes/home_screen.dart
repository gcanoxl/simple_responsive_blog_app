import 'package:flutter/material.dart';
import 'package:simple_fastapi_blog_app/constants.dart';
import 'package:simple_fastapi_blog_app/models/index.dart';
import 'package:simple_fastapi_blog_app/providers/post_provider.dart';
import '../components/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const NavBar(),
          Container(
            height: 100,
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Row(children: [
              //Left
              Posts(),
              //Right
              Column(
                children: [],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

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
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          Text(post.title),
          Text(post.content),
        ],
      ),
    );
  }
}
