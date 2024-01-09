import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:test_web/globals/app_assets.dart';
import 'package:test_web/globals/app_buttons.dart';
import 'package:test_web/globals/app_colors.dart';
import 'package:test_web/globals/constants.dart';

import '../globals/app_text_styles.dart';

class MyServices extends StatefulWidget {

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
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
                      style: AppTextStyles.headingtStyle(
                          fontSize: 30, color: AppColors.robinEdgeBlue),
                    ),
                  ]),
            ),
          ),
          Constants.sizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){},
                onHover: (value){
                  setState((){
                    isHover = value;
                  });
                },
              child: buildAnimatedContainer(title: 'App Development', asset: AppAssets.code, hover: isHover)),
              Constants.sizedBox(width: 18),
              buildAnimatedContainer(title: 'Graphic Designing', asset: AppAssets.analytics, hover: isHover),
              Constants.sizedBox(width: 18),
              buildAnimatedContainer(title: 'Digital Marketing', asset: AppAssets.brush, hover: isHover),
              Constants.sizedBox(width: 18),
            ],
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover
}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: hover ? 400 : 390,
      height:  hover ? 440 : 430,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
              color: Colors.black54,
              spreadRadius: 4.0,
              blurRadius: 4.5,
              offset: Offset(3.0, 4.5)),
        ],
      ),
      child: Column(
        children: [
          Image.asset(asset,
              width: 50, height: 50, color: AppColors.themeColor),
          Constants.sizedBox(height: 30),
          Text(
            title,
            style: AppTextStyles.monteseratStyle(color: Colors.white),
          ),
          Constants.sizedBox(height: 12),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
            ' Maecenas varius in odio nec condimentum. Nunc vel porta quam.',
            style: AppTextStyles.normalStyle(),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 20),
          AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
        ],
      ),
    );
  }
}
