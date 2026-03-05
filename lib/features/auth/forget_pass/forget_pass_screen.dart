import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/resources/assets_manger.dart';
import 'package:movies/core/resources/colors_manger.dart';
import 'package:movies/core/resources/text_style.dart';
import 'package:movies/core/widgets/custom_button.dart';
import 'package:movies/core/widgets/custom_text_form_field.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forget Password")),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AssetsManger.forgetPass),
              SizedBox(height: 24.h),
              CustomTextFormField(prefixIcon: Icons.email, iconName: "Email"),
              SizedBox(height: 24.h),
              CustomButton(
                buttonWidth: double.infinity,
                buttonClick: () {},
                backgroundColor: ColorsManger.yellow,
                foregroundColor: ColorsManger.black,
                buttonName: "Verify Email",
                buttonPaddingHight: 15,
                style: AppTextStyles.buttonName(20.sp, ColorsManger.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
