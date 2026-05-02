import 'package:e_commerce/core/routing/app_routes.dart';
import 'package:e_commerce/core/styling/app_assets.dart';
import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widgets/spacing_widgets.dart';
import 'package:e_commerce/features/account/widgets/account_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: .start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const Divider(color: Color(0xffE6E6E6)),
          ),
          const HeightSpace(16),
          AccountTileWidget(
            title: "My Orders",
            iconPath: AppAssets.box,
            onTap: () {},
          ),
          const HeightSpace(16),
          Divider(thickness: 8, color: Color(0xffE6E6E6)),
          const HeightSpace(16),
          AccountTileWidget(
            title: "My Details",
            iconPath: AppAssets.details,
            onTap: () {},
          ),
          const HeightSpace(16),
          AccountTileWidget(
            title: "Address book",
            iconPath: AppAssets.address,
            onTap: () {
              context.pushNamed(AppRoutes.addressScreen);
            },
          ),
          const HeightSpace(16),
          AccountTileWidget(
            title: "FAQ",
            iconPath: AppAssets.question,
            onTap: () {},
          ),
          const HeightSpace(16),
          AccountTileWidget(
            title: "Help Center",
            iconPath: AppAssets.headphones,
            onTap: () {},
          ),
          const HeightSpace(16),
          const Divider(thickness: 8, color: Color(0xffE6E6E6)),
          Spacer(),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 16.sp),
              child: Row(
                children: [
                  Icon(Icons.logout, size: 25.sp, color: Colors.red),
                  WidthSpace(8),
                  Text(
                    "Log Out",
                    style: AppStyles.black15BoldStyle.copyWith(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
          HeightSpace(20),
        ],
      ),
    );
  }
}
