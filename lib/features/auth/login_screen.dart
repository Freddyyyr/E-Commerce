import 'package:e_commerce/core/routing/app_routes.dart';
import 'package:e_commerce/core/styling/app_colors.dart';
import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widgets/custom_text_field.dart';
import 'package:e_commerce/core/widgets/primay_button_widget.dart';
import 'package:e_commerce/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    username = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeightSpace(28),
                SizedBox(
                  width: 335.w,
                  child: Text(
                    "Login To Your Account",
                    style: AppStyles.primaryHeadLinesStyle,
                  ),
                ),
                const HeightSpace(8),
                SizedBox(
                  width: 335.w,
                  child: Text(
                    "It's great to see you again",
                    style: AppStyles.grey12MediumStyle,
                  ),
                ),
                const HeightSpace(32),

                Text("User Name", style: AppStyles.black16w500Style),

                const HeightSpace(8),
                CustomTextField(
                  controller: username,
                  hintText: "Enter Your Username",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Username";
                    }
                    return null;
                  },
                ),
                const HeightSpace(16),
                Text("Password", style: AppStyles.black16w500Style),

                const HeightSpace(8),
                CustomTextField(
                  hintText: "Enter Your Password",
                  controller: password,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: AppColors.greyColor,
                    size: 20.sp,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Password";
                    }
                    if (value.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                    return null;
                  },
                ),

                const HeightSpace(55),
                PrimayButtonWidget(
                  buttonText: "Sign In",
                  onPress: () {
                    context.pushNamed(AppRoutes.mainScreen);
                    //    if (formKey.currentState!.validate()) {
                    // GoRouter.of(context).pushNamed(AppRoutes.verifyOtpScreen);
                    //  }
                  },
                ),
                const Spacer(),
                const HeightSpace(155),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(AppRoutes.registerScreen);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: AppStyles.black16w500Style.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: "Join",
                            style: AppStyles.black15BoldStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const HeightSpace(16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
