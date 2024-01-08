import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:test_web/globals/app_assets.dart';
import 'package:test_web/globals/app_colors.dart';
import 'package:test_web/globals/constants.dart';

import '../globals/app_text_styles.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      child: Column(
        children: [
          FadeInDown(
            duration: Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                  text: 'My ',
                  style: AppTextStyles.headingtStyle(fontSize: 30),
                  children: [
                    TextSpan(
                      text: 'Services',
                      style: AppTextStyles.headingtStyle(fontSize: 30, color: AppColors.robinEdgeBlue),
                    ),
                  ]
              ),
            ),
          ),
          Constants.sizedBox(height: 40),
          Row(
            children: [
              AnimatedContainer(duration: const Duration(milliseconds: 600),
                width: 450,
                child: Column(
                  children: [
                    Image.asset(AppAssets.code,
                        width: 50,
                        height: 50,
                        color: AppColors.themeColor),
                    Constants.sizedBox(height: 30),
                    Text('App Development', style: AppTextStyles.monteseratStyle(color: Colors.white),),
                    Constants.sizedBox(height: 12),
                    Text( 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                        ' Maecenas varius in odio nec condimentum. Nunc vel porta quam.'
                      , style: AppTextStyles.normalStyle(),),

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
