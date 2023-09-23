import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/constants.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: CircularProgressIndicator(),
          ),
          Text(
            'loading'.tr,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
