import 'package:flutter/material.dart';
import 'package:food_app/core/utils/app_assets.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/model/onboarding_model.dart';
import 'package:food_app/routes/app_routes.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;

  final List<OnboardingModel> onboardingData = [
    OnboardingModel(
      imagePath: AppAssets.onboardingone,
      title: 'Track your Comfort Food here',
      subtitle:
          'Here You Can find a chef or dish for every taste and color. Enjoy!',
    ),
    OnboardingModel(
      imagePath: AppAssets.onboardingtwo,
      title: 'Foodie is Where Your Comfort Food Resides',
      subtitle: 'Enjoy a fast and smooth food delivery at your doorstep',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: onboardingData.length,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 280,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 320,
                        height: 480,
                        decoration: BoxDecoration(
                          color: AppColors.lightcream,
                          borderRadius: BorderRadius.circular(120),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 40,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: AppColors.orangeShade,
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        right: 40,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: AppColors.orangeShade,
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 10,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.orangeShade,
                        ),
                      ),
                      Positioned(
                        top: 50,
                        right: 10,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: AppColors.orangeShade,
                        ),
                      ),
                      Positioned(
                        top: 250,
                        right: 10,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.lightcream,
                        ),
                      ),

                      Image.asset(onboardingData[index].imagePath, height: 250),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                Text(
                  onboardingData[index].title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  onboardingData[index].subtitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    if (index < onboardingData.length - 1) {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    } else {
                      Get.offAllNamed(AppRoutes.login);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.pinksh,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    child: Text(
                      "Next",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
