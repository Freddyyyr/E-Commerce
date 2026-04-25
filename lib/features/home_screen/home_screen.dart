import 'package:e_commerce/core/routing/app_routes.dart';
import 'package:e_commerce/core/styling/app_colors.dart';
import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widgets/custom_text_field.dart';
import 'package:e_commerce/core/widgets/spacing_widgets.dart';
import 'package:e_commerce/features/home_screen/widgets/category_item_widget.dart';
import 'package:e_commerce/features/home_screen/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          const HeightSpace(28),
          SizedBox(
            width: 335.w,
            child: Text("Discover", style: AppStyles.primaryHeadLinesStyle),
          ),
          Row(
            children: [
              CustomTextField(width: 270.w, hintText: "Search for clothes"),
              WidthSpace(8),
              Container(
                width: 56.w,
                height: 56.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(Icons.tune, color: Colors.white),
              ),
            ],
          ),
          HeightSpace(16),
          SingleChildScrollView(
            scrollDirection: .horizontal,
            child: Row(children: [CategoryItemWidget(categoryName: "All")]),
          ),
          HeightSpace(16),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 16.sp,
                childAspectRatio: 0.75,
              ),
              children: [
                ProductItemWidget(
                  title: "Shoes",
                  price: "150",
                  onTap: () {
                    context.pushNamed(AppRoutes.productScreen);
                  },
                ),
                ProductItemWidget(title: "Shoes", price: "150"),
                ProductItemWidget(title: "Shoes", price: "150"),
                ProductItemWidget(title: "Shoes", price: "150"),
                ProductItemWidget(title: "Shoes", price: "150"),
                ProductItemWidget(title: "Shoes", price: "150"),
                ProductItemWidget(title: "Shoes", price: "150"),
                ProductItemWidget(title: "Shoes", price: "150"),
                ProductItemWidget(title: "Shoes", price: "150"),
                ProductItemWidget(title: "Shoes", price: "150"),
                ProductItemWidget(title: "Shoes", price: "150"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
