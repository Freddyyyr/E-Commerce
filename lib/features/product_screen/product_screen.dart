import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widgets/primay_button_widget.dart';
import 'package:e_commerce/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details"), centerTitle: true),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  const HeightSpace(20),
                  Container(
                    width: 341.w,
                    height: 341.h,
                    decoration: BoxDecoration(
                      borderRadius: .circular(8.r),
                      color: Colors.grey,
                    ),
                  ),
                  const HeightSpace(12),
                  Text(
                    "T Shirt",
                    style: AppStyles.black16w500Style.copyWith(fontSize: 24.sp),
                  ),
                  const HeightSpace(8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 18.sp),
                      WidthSpace(2),
                      Text(
                        "4.5/5",
                        style: AppStyles.black15BoldStyle.copyWith(
                          decoration: .underline,
                        ),
                      ),
                      WidthSpace(2),
                      Text(
                        "(45 Reviews)",
                        style: AppStyles.grey12MediumStyle.copyWith(
                          fontWeight: .bold,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  HeightSpace(8),
                  Text(
                    "Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. Blue T Shirt. Good for all men and suits for all of them. Good for all men and suits for all of them. ",
                    style: AppStyles.grey12MediumStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: .normal,
                    ),
                  ),
                  HeightSpace(100),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Divider(),
                  HeightSpace(10),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Price",
                            style: AppStyles.grey12MediumStyle.copyWith(
                              fontSize: 16.sp,
                            ),
                          ),
                          const HeightSpace(4),
                          Text(
                            "1200 \$",
                            style: AppStyles.black16w500Style.copyWith(
                              fontSize: 24.sp,
                              fontWeight: .bold,
                            ),
                          ),
                        ],
                      ),
                      const WidthSpace(16),
                      PrimayButtonWidget(
                        width: MediaQuery.of(context).size.width * 0.5,
                        icon: Icon(
                          Icons.shopping_cart,
                          size: 16.sp,
                          color: Colors.white,
                        ),
                        buttonText: "Add To Cart",
                        onPress: () {},
                      ),
                    ],
                  ),
                  HeightSpace(8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
