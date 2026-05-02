import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItemWidget extends StatelessWidget {
  final String title;
  final String price;
  final Function()? onTap;

  const ProductItemWidget({
    super.key,
    required this.title,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8.r),
              child: Container(width: 150.w, height: 150.h, color: Colors.grey),
            ),
            HeightSpace(8),
            Text(title, style: AppStyles.black15BoldStyle),
            HeightSpace(8),
            Text(
              price,
              style: AppStyles.grey12MediumStyle.copyWith(
                fontWeight: .bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
