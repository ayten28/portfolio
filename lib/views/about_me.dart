import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:test_web/globals/app_assets.dart';
import 'package:test_web/globals/app_colors.dart';

import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor2,
      child: Row(
        children: [
          Image.asset(
            AppAssets.profile2,
            height: 450,
            width: 400,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeInRight(
                  duration: Duration(milliseconds: 1400),
                  child: RichText(
                    text: TextSpan(
                      text: 'About ',
                      style: AppTextStyles.headingtStyle(fontSize: 30),
                      children: [
                        TextSpan(
                          text: 'Me',
                          style: AppTextStyles.headingtStyle(fontSize: 30, color: AppColors.robinEdgeBlue),
                        ),
                      ]
                    ),
                  ),
                ),
                Constants.sizedBox(height: 6),
                Text('Flutter Developer!', style: AppTextStyles.monteseratStyle(color: Colors.white),),
                Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
                      ' The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,'
                      ' as opposed to using \'Content here, content here\', making it look like readable English.'
                      ' Many desktop publishing packages and web page editors now use Lorem Ipsum as their default'
                      ' model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.'
                      ' Various versions have evolved over the years, sometimes by accident, sometimes on purpose'
                      ' (injected humour and the like).',
                  style: AppTextStyles.normalStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
