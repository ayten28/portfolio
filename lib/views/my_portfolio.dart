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

  final onHoverEffect = Matrix4.identity()..scale(1.0);

  List images = <String>[
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
  ];

  var hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      padding:
          EdgeInsets.symmetric(horizontal: 30, vertical: size.width * 0.05),
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
                mainAxisExtent: 200,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
              ),
              itemBuilder: (context, index) {
                var image = images[index];
                return FadeInUpBig(
                  duration: const Duration(milliseconds: 1600),
                  child: InkWell(
                    onTap: (){},
                    onHover: (value){
                      setState(() {
                        setState(() {
                          if(value)
                          {
                            hoveredIndex = index;
                          }
                        });
                      });
                    },
                    child: Stack(alignment: Alignment.center, children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage(image),
                            fit: BoxFit.fill,
                          )),
                      Visibility(
                        visible: index == hoveredIndex,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          transform: index == hoveredIndex ? onHoverEffect : null,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  colors: [
                                    AppColors.themeColor.withOpacity(1.0),
                                    AppColors.themeColor.withOpacity(0.9),
                                    AppColors.themeColor.withOpacity(0.8),
                                    AppColors.themeColor.withOpacity(0.7),
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)
                              //color: AppColors.themeColor.withOpacity(0.6)
                              ),
                          child: Column(
                            children: [
                              Text(
                                'App Development',
                                style: AppTextStyles.monteseratStyle(
                                    color: Colors.black87, fontsize: 18),
                              ),
                              Constants.sizedBox(height: 15),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                                ' Maecenas varius in odio nec condimentum. Nunc vel porta quam.',
                                style:
                                    AppTextStyles.normalStyle(color: Colors.black87),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                );
              })
        ],
      ),
    );
  }
}
