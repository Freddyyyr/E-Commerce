import 'package:e_commerce/core/styling/app_styles.dart';
import 'package:e_commerce/core/widgets/spacing_widgets.dart';
import 'package:e_commerce/features/address/widgets/address_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Address"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            const Divider(color: Color(0xffE6E6E6)),
            const HeightSpace(20),
            Text("Saved Address", style: AppStyles.black18BoldStyle),
            const HeightSpace(24),
            Expanded(
              child: ListView(
                children: [
                  AddressItemWidget(
                    address: "Home",
                    addressDetails: "123 Gardenia City - Suez St",
                  ),
                  AddressItemWidget(
                    address: "Home",
                    addressDetails: "123 Gardenia City - Suez St",
                  ),
                  AddressItemWidget(
                    address: "Home",
                    addressDetails: "123 Gardenia City - Suez St",
                  ),
                  AddressItemWidget(
                    address: "Home",
                    addressDetails: "123 Gardenia City - Suez St",
                  ),
                  AddressItemWidget(
                    address: "Home",
                    addressDetails: "123 Gardenia City - Suez St",
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
