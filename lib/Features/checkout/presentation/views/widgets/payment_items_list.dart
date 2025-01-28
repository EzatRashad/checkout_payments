import 'package:checkout_payments/Features/checkout/presentation/views/widgets/pay_ment_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentItemsList extends StatefulWidget {
  const PaymentItemsList({super.key});

  @override
  State<PaymentItemsList> createState() => _PaymentItemsListState();
}

class _PaymentItemsListState extends State<PaymentItemsList> {
  List<String> images = [
    "assets/images/card.svg",
    "assets/images/paypal.svg",
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.symmetric(horizontal: 11.0.r),
      child: SizedBox(
        height: 60.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: PayMentItem(
                active: activeIndex == index,
                image: images[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
