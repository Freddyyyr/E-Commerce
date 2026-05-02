import 'package:e_commerce/core/widgets/primay_button_widget.dart';
import 'package:e_commerce/core/widgets/spacing_widgets.dart';
import 'package:e_commerce/features/cart/widgets/cart_item_widget.dart';
import 'package:e_commerce/features/cart/widgets/title_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, // leading: Container(),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              const HeightSpace(20),
              CartItemWidget(),
              CartItemWidget(),
              CartItemWidget(),
              HeightSpace(20),
              TitlePriceWidget(title: "Sub Total", price: "1200 \$"),
              TitlePriceWidget(title: "VAT (16%)", price: "1200 \$"),
              TitlePriceWidget(title: "Shipping Fees", price: "1200 \$"),
              const HeightSpace(20),
              Divider(),
              const HeightSpace(20),
              TotalPriceWidget(title: "Total", price: "3600 \$"),
              const HeightSpace(20),
              PrimayButtonWidget(
                width: MediaQuery.of(context).size.width,
                trailingIcon: Icon(
                  Icons.keyboard_double_arrow_right,
                  size: 16.sp,
                  color: Colors.white,
                ),
                buttonText: "Go To Checkout",
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
