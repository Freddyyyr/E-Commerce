import 'package:e_commerce/core/styling/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  final double? width;
  final double? height;
  const LoadingWidget({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: width ?? MediaQuery.of(context).size.height,
      child: LottieBuilder.asset(
        AppAssets.loadingLottie,
        width: 150.w,
        height: 150.h,
      ),
    );
  }
}
