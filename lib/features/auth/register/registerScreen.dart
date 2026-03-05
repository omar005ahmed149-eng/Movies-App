import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/resources/colors_manger.dart';
import 'package:movies/core/resources/text_style.dart';
import 'package:movies/core/route_manger.dart';
import 'package:movies/core/widgets/custom_button.dart';
import 'package:movies/core/widgets/custom_text_form_field.dart';
import 'package:movies/features/auth/widgets/custom_caroselslider.dart';
import 'package:movies/features/auth/widgets/custom_navigator_button.dart';
import 'package:movies/features/auth/widgets/switch_toggle.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCarouselslider(),
              SizedBox(height: 10.h),
              Text(
                "Avatar",
                style: AppTextStyles.buttonName(16.sp, ColorsManger.white),
              ),
              SizedBox(height: 12.h),
              CustomTextFormField(
                prefixIcon: Icons.person,
                iconName: "Name",
                controller: _nameController,
              ),
              SizedBox(height: 24.h),
              CustomTextFormField(
                prefixIcon: Icons.email,
                iconName: "Email",
                controller: _emailController,
              ),
              SizedBox(height: 24.h),
              CustomTextFormField(
                prefixIcon: Icons.lock,
                iconName: "Password",
                sufffixIcon: Icons.visibility,
                controller: _passwordController,
              ),
              SizedBox(height: 24.h),
              CustomTextFormField(
                prefixIcon: Icons.lock,
                iconName: "Confirm Password",
                controller: _confirmPasswordController,
                sufffixIcon: Icons.visibility,
              ),
              SizedBox(height: 24.h),
              CustomTextFormField(
                prefixIcon: Icons.phone,
                iconName: "Phone",
                controller: _phoneController,
              ),
              SizedBox(height: 24.h),
              CustomButton(
                buttonWidth: double.infinity,
                buttonClick: () {},
                backgroundColor: ColorsManger.yellow,
                foregroundColor: ColorsManger.black,
                buttonName: "Create Account",
                buttonPaddingHight: 15,
                style: AppTextStyles.buttonName(20.sp, ColorsManger.black),
              ),
              SizedBox(height: 18.h),
              CustomNavigatorButton(
                statementTitle: "Already Have Account ?",
                textButtonTitle: "Login",
                onTap: () {
                  Navigator.pushReplacementNamed(context, RoutesManger.login);
                },
              ),
              SizedBox(height: 18),
              SwitchToggle(),
            ],
          ),
        ),
      ),
    );
  }
}
