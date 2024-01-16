import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../globals/app_assets.dart';
import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  List images = <String>[
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: size.width * 0.1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
            duration: Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                  text: 'Latest ',
                  style: AppTextStyles.headingtStyle(fontSize: 30),
                  children: [
                    TextSpan(
                      text: 'Projects',
                      style: AppTextStyles.headingtStyle(
                          fontSize: 30, color: AppColors.robinEdgeBlue),
                    ),
                  ]),
            ),
          ),
          Constants.sizedBox(height: 40),
          GridView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 300,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
              ),
              itemBuilder: (context, index) {
                var image = images[index];
                return Stack(
                  children:[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        )),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.themeColor.withOpacity(0.6)
                      ),
                    ),
                  ]
                );
              })
        ],
      ),
    );
  }
}
