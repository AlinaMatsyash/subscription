import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:subscription/res/assets/colors.gen.dart';
import 'package:subscription/theme/app_typography.dart';

class RaisedGradientButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const RaisedGradientButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317.w,
      height: 60.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29),
          gradient: const LinearGradient(
            colors: [
              ColorName.purple,
              ColorName.purpleLight,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              text,
              style: AppTypography.montserratAlternatesMedium20
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
