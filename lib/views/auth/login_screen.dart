import 'package:flutter/material.dart';
import 'package:food_app/common_widget/common_textformfiled.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/core/utils/app_assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          ClipPath(
            clipper: BottomCurveClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              color: AppColors.pinksh,
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Image.asset(AppAssets.logo, height: 150),
                  const Text(
                    'Deliver Favourite Food',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 90, 24, 0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 20),

                    CustomTextField(
                      hintText: "example@gmail.com",
                      prefixIcon: Icons.person,
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),

                    CustomTextField(
                      hintText: "Password",
                      prefixIcon: Icons.lock,
                      obscureText: obscurePassword,
                      controller: passwordController,
                      suffixIcon:
                          obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                      onSuffixTap: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                    ),
                    const SizedBox(height: 8),

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(color: AppColors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.pinksh,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),
                    const Text("Or"),
                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(AppAssets.googleIcon, height: 30),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            AppAssets.facebookIcon,
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Don’t have an account?"),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(
                        color: AppColors.pinksh,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
