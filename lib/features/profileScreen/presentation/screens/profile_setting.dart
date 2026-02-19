import 'package:earn_watching_ads/core/themes/app_colors.dart';
import 'package:earn_watching_ads/core/themes/app_const.dart';
import 'package:earn_watching_ads/core/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: "Account Setting"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConst.scaffoldPadding),
        child: Column(
          children: [
            Gap(24.r),
            // IMAGE
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.appbarBackgroundColor),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.network(
                    'https://i.postimg.cc/QxkzygBR/icons8-cleansing-100.png',
                    fit: BoxFit.contain,
                    width: 68.r,
                    height: 68.r,
                  ),
                ),
                Gap(16.r),
                RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: 'FullName:\n',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(),
                    children: [
                      TextSpan(
                        text: "Mohammad Imtiaj\n",
                        style: Theme.of(
                          context,
                        ).textTheme.labelSmall?.copyWith(),
                      ),
                      TextSpan(
                        text: "Hossen",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // FULL NAME
            // EMAIL
            // PASSWORD
            // PAYOUT NUMBER
          ],
        ),
      ),
    );
  }
}
