import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitlePriceWidget extends StatelessWidget {
  final String title;
  final String price;

  const TitlePriceWidget({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Text(
            title,
            style: AppStyles.black16w500Style.copyWith(
              color: Colors.grey,
              fontWeight: .bold,
            ),
          ),
          Spacer(),
          Text(
            price,
            style: AppStyles.black15BoldStyle.copyWith(fontWeight: .bold),
          ),
        ],
      ),
    );
  }
}

class TotalPriceWidget extends StatelessWidget {
  final String title;
  final String price;

  const TotalPriceWidget({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Text(
            title,
            style: AppStyles.black15BoldStyle.copyWith(fontWeight: .bold),
          ),
          Spacer(),
          Text(
            price,
            style: AppStyles.black16w500Style.copyWith(
              color: Colors.grey,
              fontWeight: .bold,
            ),
          ),
        ],
      ),
    );
  }
}
