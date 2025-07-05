import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/utils/app_theme.dart';
import 'package:food_app/routes/app_pages.dart';
import 'package:food_app/routes/app_routes.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyB-sTuztRMou2yCLcjPgZh5AACVLwx65NM",
      appId: "1:463467980074:android:025a439c90b5c5c245aa53",
      messagingSenderId: "",
      projectId: "foodapp-52bf7",
    ),
  );

  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
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
