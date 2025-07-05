import 'package:food_app/views/auth/login_screen.dart';
import 'package:food_app/views/auth/register_screen.dart';
import 'package:food_app/views/auth/splash_screen.dart';
import 'package:food_app/views/home/bottombar.dart';
import 'package:food_app/views/home/home_screen.dart';
import 'package:food_app/views/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';
import 'package:food_app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.onboarding, page: () => const OnboardingScreen()),
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.signup, page: () => const SignUpScreen()),
    GetPage(name: AppRoutes.bottombar, page: () => const BottomBar()),
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
  ];
}
