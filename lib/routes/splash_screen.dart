import 'package:flutter/material.dart';
import 'package:simple_fastapi_blog_app/components/loading_widget.dart';
import 'package:simple_fastapi_blog_app/routes/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<void> initializeSettings() async {}

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeSettings(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        } else {
          if (snapshot.hasError) {
            return Scaffold(
              body: ErrorWidget(snapshot.error!),
            );
          } else {
            return const HomeScreen();
          }
        }
      },
    );
  }
}
