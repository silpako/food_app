import 'package:food_app/views/auth/splash_screen.dart';
import 'package:get/get.dart';
import 'package:food_app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),  
  ];
}
