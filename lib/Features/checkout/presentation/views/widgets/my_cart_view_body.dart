import 'package:checkout_payments/Features/checkout/presentation/views/widgets/info_section.dart';
import 'package:checkout_payments/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_botton.dart';
import 'payment_methods_bottom_sheet.dart';
 
class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "My Cart", context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                  height: 424.h,
                  child: Image.asset("assets/images/basket_image.png")),
              InfoSection(),
              16.ph,
              CustomButton(
                text: 'Complete Payment',
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => PaymentDetails(),
                  //     ));
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      builder: (context) {
                        return PaymentMethodsBottomSheet();
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 