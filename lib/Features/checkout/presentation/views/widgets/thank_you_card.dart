import 'package:awesome_icons/awesome_icons.dart';
import 'package:checkout_payments/Features/checkout/presentation/views/widgets/card_info_widget.dart';

import 'package:checkout_payments/Features/checkout/presentation/views/widgets/cart_info_item.dart';
import 'package:checkout_payments/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'taoal_price_widget.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            42.ph,
            OrderInfoItem(
              title: 'Date',
              value: '01/24/2023',
            ),
            20.ph,
            OrderInfoItem(
              title: 'Time',
              value: '10:15 AM',
            ),
            20.ph,
            OrderInfoItem(
              title: 'To',
              value: 'Sam Louis',
            ),
            const Divider(
              height: 50,
              thickness: 2,
            ),
            const TotalPrice(title: 'Total', value: r'$50.97'),
            20.ph,
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.barcode,
                  size: 64.sp,
                ),
                Container(
                  width: 113.w,
                  height: 58.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50.w, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: Styles.style24
                          .copyWith(color: const Color(0xff34A853)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
