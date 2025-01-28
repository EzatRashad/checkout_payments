import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PayMentItem extends StatelessWidget {
  const PayMentItem({super.key, this.active = false, required this.image});
  final bool active;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      padding: EdgeInsets.all(0),
      width: 106.w,
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: active ? Colors.green : Colors.black26,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SvgPicture.asset(
        image,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
