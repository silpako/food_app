import 'package:flutter/material.dart';
import 'package:food_app/core/utils/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _foodController;
  late AnimationController _logoController;
  late Animation<Offset> _foodSlideAnimation;
  late Animation<double> _logoOpacityAnimation;
  late Animation<double> _logoScaleAnimation;

  @override
  void initState() {
    super.initState();

    _foodController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _foodSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _foodController, curve: Curves.easeOut));

    _logoOpacityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _logoController, curve: Curves.easeIn));

    _logoScaleAnimation = Tween<double>(begin: 0.7, end: 1).animate(
      CurvedAnimation(parent: _logoController, curve: Curves.easeOutBack),
    );

    _startAnimations();
  }

  void _startAnimations() async {
    await _foodController.forward();
    await Future.delayed(const Duration(milliseconds: 300));
    await _logoController.forward();
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/onboarding'); // Update your route
  }

  @override
  void dispose() {
    _foodController.dispose();
    _logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0E5),
      body: Stack(
        children: [
          SlideTransition(
            position: _foodSlideAnimation,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppAssets.foodCornerImage, width: 180),
            ),
          ),

          Center(
            child: FadeTransition(
              opacity: _logoOpacityAnimation,
              child: ScaleTransition(
                scale: _logoScaleAnimation,
                child: Image.asset(AppAssets.applogo, width: 400, height: 400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
