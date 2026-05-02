import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountTileWidget extends StatelessWidget {
  final String? title;
  final String? iconPath;
  final VoidCallback? onTap;

  const AccountTileWidget({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: InkWell(
        onTap: onTap ?? () {},
        child: Row(
          children: [
            Row(
              children: [
                iconPath == null
                    ? const SizedBox.shrink()
                    : Image.asset(iconPath!, width: 25.sp, height: 25.sp),
                const WidthSpace(8),
                Text(
                  title ?? "",
                  style: AppStyles.subtitlesStyles.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 16.sp, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
