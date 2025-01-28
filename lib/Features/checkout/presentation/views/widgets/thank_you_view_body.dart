import 'package:checkout_payments/Features/checkout/presentation/views/widgets/custom_check_icon.dart';
import 'package:checkout_payments/Features/checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:checkout_payments/Features/checkout/presentation/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: Transform.translate(
          offset: const Offset(0, -16), child:   Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 20 + 8,
            right: 20 + 8,
            child: const CustomDashedLine(),
          ),
          Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          const Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    )),
    ); 
    
    
  
  }
}
