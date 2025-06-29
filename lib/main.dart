import 'package:flutter/material.dart';
import 'package:food_app/core/utils/app_theme.dart';
import 'package:food_app/routes/app_pages.dart';
import 'package:food_app/routes/app_routes.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    );
  }
}
