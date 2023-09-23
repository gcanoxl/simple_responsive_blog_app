import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/i18l.dart';
import 'package:simple_fastapi_blog_app/routes/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Messages(),
      // locale: const Locale('en', 'US'),
      locale: const Locale('zh', 'CN'),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
