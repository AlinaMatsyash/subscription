import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:subscription/features/subscription/presentation/widgets/button_check.dart';
import 'package:subscription/features/subscription/presentation/widgets/gradient_box_border.dart';
import 'package:subscription/res/assets/colors.gen.dart';
import 'package:subscription/theme/app_typography.dart';

class OfferButton extends StatelessWidget {
  const OfferButton({
    super.key,
    required this.select,
    required this.description,
    required this.duration,
    required this.price,
    required this.discountedPrice,
    required this.info,
  });

  final bool select;
  final String description;
  final String duration;
  final String price;
  final String discountedPrice;
  final List<String> info;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 321.w,
              decoration: select
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(29.r),
                      color: ColorName.black.withOpacity(0.37),
                      border: GradientBoxBorder(
                        width: 1,
                        gradient: LinearGradient(
                          colors: [
                            ColorName.white.withOpacity(0),
                            ColorName.white
                          ],
                        ),
                      ),
                    )
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(29.r),
                      color: ColorName.white.withOpacity(0.1),
                    ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 21.w, right: 26.w, top: 26.h, bottom: 36.h),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 21.w),
                              child: ButtonCheck(
                                select: select,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  duration,
                                  style: AppTypography
                                      .montserratAlternatesMedium15
                                      .copyWith(color: ColorName.white),
                                ),
                                Text(
                                  description,
                                  style: AppTypography
                                      .montserratAlternatesMedium12
                                      .copyWith(color: ColorName.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        price != discountedPrice
                            ? Column(
                                children: [
                                  Text(
                                    discountedPrice,
                                    style: AppTypography
                                        .montserratAlternatesMedium16
                                        .copyWith(color: ColorName.white),
                                  ),
                                  Text(
                                    price,
                                    style: AppTypography
                                        .montserratAlternatesMedium12
                                        .copyWith(
                                            color: ColorName.white
                                                .withOpacity(0.46),
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor: ColorName.white
                                                .withOpacity(0.46)),
                                  ),
                                ],
                              )
                            : Text(
                                price,
                                style: AppTypography
                                    .montserratAlternatesMedium16
                                    .copyWith(color: ColorName.white),
                              ),
                      ],
                    ),
                    SizedBox(height: 42.h),
                    SizedBox(
                      height: info.length.toDouble() * 28.w,
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        itemCount: info.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 16.w),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorName.white,
                                  ),
                                ),
                              ),
                              Text(
                                info[index],
                                style: AppTypography
                                    .montserratAlternatesMedium12
                                    .copyWith(
                                  color: ColorName.white,
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 14,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        select
            ? Positioned(
                top: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.r),
                    color: ColorName.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('выгодно',
                        style: AppTypography.montserratAlternatesMedium12
                            .copyWith(color: ColorName.purple)),
                  ),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
