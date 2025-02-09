import 'package:checkout_payments/core/utils/utils.dart';
import 'package:flutter/material.dart';

import 'custom_button_bloc_consumer.dart';
import 'payment_items_list.dart';

class PaymentMethodsBottomSheet extends StatefulWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  State<PaymentMethodsBottomSheet> createState() =>
      _PaymentMethodsBottomSheetState();
}

class _PaymentMethodsBottomSheetState extends State<PaymentMethodsBottomSheet> {
  bool isPaypal = false;

  updatePaymentMethod({required int index}) {
    if (index == 0) {
      isPaypal = false;
    } else {
      isPaypal = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          16.ph,
          PaymentItemsList(updatePaymentMethod: updatePaymentMethod,),
          32.ph,
          CustomButtonBlocConsumer(isPaypal: isPaypal,),
        ],
      ),
    );
  }
}
