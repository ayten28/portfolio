import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:test_web/globals/app_assets.dart';
import 'package:test_web/globals/app_colors.dart';
import 'package:test_web/globals/app_text_styles.dart';
import 'package:test_web/globals/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:test_web/widgets/profile_animation.dart';
import 'about_me.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 0,
        title: Row(
          children: [
            Text('Portfolio'),
            Spacer(),
            const SizedBox(width: 30),
            Text('Home', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 30,
            ),
            Text('About', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 30,
            ),
            Text('Services', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 30,
            ),
            Text('Portfolio', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 30,
            ),
            Text('Contact', style: AppTextStyles.headerTextStyle())
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.05,
            // left: size.width * 0.1,
            // right: size.width * 0.1
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInDown(
                      duration: Duration(milliseconds: 1200),
                      child: Text(
                        'Hello, it\'s Me',
                        style: AppTextStyles.monteseratStyle(color: Colors.white),
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInRight(
                      duration: Duration(milliseconds: 1400),
                      child: Text(
                        'Ayten Huseynzade',
                        style: AppTextStyles.headingtStyle(),
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInLeft(
                      duration: Duration(milliseconds: 1400),
                      child: Row(
                        children: [
                          Text(
                            'And I\'m a ',
                            style: AppTextStyles.monteseratStyle(
                                color: Colors.white),
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText('Flutter Developer',
                                  textStyle: AppTextStyles.monteseratStyle(
                                      color: Colors.lightBlue)
                                  //speed: Duration(milliseconds: 400)
                                  ),
                              TyperAnimatedText(
                                '.NET Developer',
                                textStyle: AppTextStyles.monteseratStyle(
                                    color: Colors.lightBlue),
                              ),
                              TyperAnimatedText('Angular Developer',
                                  textStyle: AppTextStyles.monteseratStyle(
                                      color: Colors.lightBlue)),
                            ],
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                        ],
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInDown(
                      duration: Duration(milliseconds: 1600),
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                          ' Maecenas varius in odio nec condimentum. Nunc vel porta quam.'
                          ' Cras sed pharetra enim, nec fermentum orci. '
                          'Donec volutpat lobortis tortor quis pulvinar. Mauris nec congue nulla.',
                          style: AppTextStyles.normalStyle(),
                        ),
                      ),
                    ),
                    Constants.sizedBox(height: 22),
                    FadeInUp(
                      duration: Duration(milliseconds: 1600),
                      child: Row(
                        children: [
                          buildSocialButton(asset: AppAssets.facebook),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.github),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.insta),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.linkedIn),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.twitter)
                        ],
                      ),
                    ),
                    Constants.sizedBox(height: 18),
                    FadeInUp(
                      duration: Duration(milliseconds: 1800),
                      child: buildMaterialButton(onTap: (){}),)

                  ],
                ),
                //SizedBox(width: 20),
                const ProfileAnimation(),
              ],
            ),
            const SizedBox(
              height: 220,
            ),
            AboutMe(),
          ],
        ),
      ),
    );
  }

  MaterialButton buildMaterialButton({required VoidCallback onTap}) {
    return MaterialButton(
                    onPressed: onTap,
                    color: AppColors.themeColor,
                    splashColor: AppColors.lawGreen,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 10),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    hoverColor: AppColors.aqua,
                    elevation: 6,
                    height: 46,
                    minWidth: 130,
                    focusElevation: 12,
                    child: Text(
                      'Download CV',
                      style: AppTextStyles.headerTextStyle(),
                    ),
                  );
  }

  Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.themeColor, width: 2.0),
          color: AppColors.bgColor,
          shape: BoxShape.circle),
      padding: EdgeInsets.all(6),
      child: InkWell(
        //radius: 50,
        onTap: () {},
        borderRadius: BorderRadius.circular(500.0),
        splashColor: AppColors.lawGreen,
        hoverColor: AppColors.aqua,
        child: Image.asset(
            asset,
            width: 10,
            height: 12,
            color: AppColors.themeColor,
            //fit: BoxFit.fill
        ),
      ),
    );
  }
}
