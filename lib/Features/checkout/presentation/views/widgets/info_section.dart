import 'package:checkout_payments/Features/checkout/presentation/views/widgets/cart_info_item.dart';
import 'package:checkout_payments/Features/checkout/presentation/views/widgets/taoal_price_widget.dart';
import 'package:checkout_payments/core/utils/utils.dart';
import 'package:flutter/material.dart';
class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
          25.ph,
              OrderInfoItem(
                title: 'Order Subtotal',
                value: r'42.97$',
              ),
                        3.ph,
             OrderInfoItem(
                title: 'Discount',
                value: r'0$',
              ),
                        3.ph,
              OrderInfoItem(
                title: 'Shipping',
                value: r'8$',
              ),
              Divider(
                thickness: 2,
                height: 34,
                color: Color(0xffC7C7C7),
              ),
              TotalPrice(title: 'Total', value: r'$50.97'),
      ],
    );
  }
}