import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:subscription/res/assets/assets.gen.dart';
import 'package:subscription/res/assets/colors.gen.dart';

class ButtonCheck extends StatelessWidget {
  ButtonCheck({super.key, required this.select});

  final bool select;

  final kInnerDecorationSButton = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(25),
  );
  final kInnerDecorationSButtonEmpty = BoxDecoration(
    border: Border.all(width: 1, color: ColorName.white),
    borderRadius: BorderRadius.circular(25),
  );
  final kGradientBoxDecorationButton = BoxDecoration(
    gradient: const LinearGradient(colors: [
      ColorName.purple,
      ColorName.purpleLight,
    ]),
    borderRadius: BorderRadius.circular(25),
  );
  final kGradientBoxDecorationButtonEmpty = BoxDecoration(
    borderRadius: BorderRadius.circular(25),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.sp,
      width: 28.sp,
      decoration: select
          ? kGradientBoxDecorationButton
          : kGradientBoxDecorationButtonEmpty,
      child: select
          ? Center(child: SvgPicture.asset(Assets.icons.check.path))
          : Container(
              decoration: kInnerDecorationSButtonEmpty,
            ),
    );
  }
}
