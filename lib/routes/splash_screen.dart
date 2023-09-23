import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/routes/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<void> initializeSettings() async {
    await Future.delayed(const Duration(seconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeSettings(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return waitingScreen();
        } else {
          if (snapshot.hasError) {
            return errorScreen(snapshot.error! as Error);
          } else {
            return const HomeScreen();
          }
        }
      },
    );
  }

  Widget waitingScreen() {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ),
            Text(
              'loading'.tr,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget errorScreen(Error e) {
    return Scaffold(
      body: Center(
        child: Text(e.toString()),
      ),
    );
  }
}
