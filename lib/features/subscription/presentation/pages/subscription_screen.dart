import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:subscription/features/subscription/presentation/widgets/offer_button.dart';
import 'package:subscription/res/assets/assets.gen.dart';
import 'package:subscription/res/assets/colors.gen.dart';
import 'package:subscription/theme/app_typography.dart';
import 'package:subscription/widgets/button_app.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: -400.w / 2,
            top: 80.h,
            child: Container(
              height: 359.h,
              width: 317.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 100,
                    color: ColorName.purple,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: -400.w / 2,
            top: 370.h,
            child: Container(
              height: 359.h,
              width: 414.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(blurRadius: 100, color: ColorName.purple)
                ],
              ),
            ),
          ),
          Positioned(
            top: 71.h,
            left: 16.w,
            child: InkWell(
              onTap: () {},
              child: SvgPicture.asset(Assets.icons.arrowLeft.path),
            ),
          ),
          Positioned(
            top: 91.h,
            // left: 16.w,
            child: Text(
              'Выберите подписку',
              style: AppTypography.montserratAlternatesMedium20
                  .copyWith(color: ColorName.white),
            ),
          ),
          Positioned(
            top: 150.h,
            child: const OfferButton(
              select: false,
              description: 'Описание',
              duration: '1 месяц',
              price: '1000р',
              discountedPrice: '1000р',
              info: [],
            ),
          ),
          Positioned(
            top: 325.h,
            child: const OfferButton(
              select: true,
              description: 'Описание',
              duration: '6 месяц',
              price: '10 000р',
              discountedPrice: '12000р',
              info: [
                'что входит',
                'что входит',
                'что входит',
                'что входит',
                'что входит',
              ],
            ),
          ),
          Positioned(
            bottom: 135.h,
            child: RaisedGradientButton(
              text: 'Купить',
              onPressed: () {},
            ),
          ),
          Positioned(
            bottom: 28.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Text(
                    'terms of use',
                    style: AppTypography.montserratAlternatesMedium12
                        .copyWith(color: ColorName.white),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text(
                    'policy privacy',
                    style: AppTypography.montserratAlternatesMedium12
                        .copyWith(color: ColorName.white),
                  ),
                  onPressed: () {},
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      color: ColorName.purple.withOpacity(0.1)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 10),
                    child: Text(
                      'Restore purchase',
                      style: AppTypography.montserratAlternatesMedium12
                          .copyWith(color: ColorName.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
