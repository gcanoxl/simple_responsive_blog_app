import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/models/index.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Post post = Get.arguments as Post;
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: SafeArea(
        child: Markdown(data: post.content),
      ),
    );
  }
}
