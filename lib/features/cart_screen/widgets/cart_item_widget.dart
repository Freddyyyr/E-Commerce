import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Container(
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          border: .all(color: Colors.grey, width: 0.5),
          borderRadius: .circular(8.r),
        ),
        child: Row(
          crossAxisAlignment: .start,
          children: [
            Container(
              width: 83.w,
              height: 79.h,
              decoration: BoxDecoration(
                borderRadius: .circular(8.r),
                color: Colors.grey,
              ),
            ),
            WidthSpace(16),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text("T Shirt", style: AppStyles.black15BoldStyle),
                      // Spacer(),
                      Icon(Icons.delete, color: Colors.red),
                    ],
                  ),
                  HeightSpace(30),
                  Row(
                    children: [
                      Text("1200 \$", style: AppStyles.black15BoldStyle),
                      Spacer(),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              alignment: .center,
                              decoration: BoxDecoration(
                                border: .all(color: Colors.grey, width: 0.5),
                                borderRadius: .circular(8.r),
                              ),
                              child: Icon(Icons.remove, size: 16.sp),
                            ),
                          ),
                          WidthSpace(8),
                          Text("1", style: AppStyles.black15BoldStyle),
                          WidthSpace(8),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              alignment: .center,
                              decoration: BoxDecoration(
                                border: .all(color: Colors.grey, width: 0.5),
                                borderRadius: .circular(8.r),
                              ),
                              child: Icon(Icons.add, size: 16.sp),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
