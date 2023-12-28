import 'package:flutter/material.dart';
import 'package:test_web/globals/app_assets.dart';
import 'package:test_web/globals/app_colors.dart';
import 'package:test_web/globals/app_text_styles.dart';
import 'package:test_web/globals/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
            Text('Home',style: AppTextStyles.headerTextStyle()),
            const   SizedBox(width: 30,),
            Text('About',style: AppTextStyles.headerTextStyle()),
            const SizedBox(width: 30,),
            Text('Services',style: AppTextStyles.headerTextStyle()),
            const SizedBox(width: 30,),
            Text('Portfolio',style: AppTextStyles.headerTextStyle()),
            const SizedBox(width: 30,),
            Text('Contact',style: AppTextStyles.headerTextStyle())
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: size.height * 0.3, left: size.width * 0.2, right: size.width * 0.2),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello, it\'s Me', style: AppTextStyles.monteseratStyle(color: Colors.white),),
                    Constants.sizedBox(height: 15),
                    Text('Ayten Huseynzade', style: AppTextStyles.headingtStyle(),),
                    Constants.sizedBox(height: 15),
                    Row(
                      children: [
                        Text('And I\'m a ', style: AppTextStyles.monteseratStyle(color: Colors.white),),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('Flutter Developer',
                                textStyle: AppTextStyles.monteseratStyle(color: Colors.lightBlue)
                                //speed: Duration(milliseconds: 400)
                            ),
                            TyperAnimatedText('.NET Developer',
                                textStyle: AppTextStyles.monteseratStyle(color: Colors.lightBlue),
                            ),
                            TyperAnimatedText('Angular Developer',
                                textStyle: AppTextStyles.monteseratStyle(color: Colors.lightBlue)),
                          ],
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 15),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                          ' Maecenas varius in odio nec condimentum. Nunc vel porta quam.'
                          ' Cras sed pharetra enim, nec fermentum orci. '
                          'Donec volutpat lobortis tortor quis pulvinar. Mauris nec congue nulla.',
                      style: AppTextStyles.normalStyle(),),
                    ),
                    Constants.sizedBox(height: 22),
                    Row(
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
                    Constants.sizedBox(height: 18),
                    MaterialButton(onPressed: (){},
                      color: AppColors.themeColor,
                      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hoverColor: AppColors.bgColor,
                      height: 55,
                      minWidth: 130,
                      child: Text('Download CV',
                      style: AppTextStyles.headerTextStyle(),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  CircleAvatar buildSocialButton({required String asset}) {
    return CircleAvatar(
                        maxRadius: 20,
                        backgroundColor: AppColors.themeColor,
                        child: CircleAvatar(
                          maxRadius: 18,
                          backgroundColor: AppColors.bgColor,
                          child: Image.asset(
                          asset,
                          width: 20,
                          height: 24,
                          color: AppColors.themeColor,
                          fit: BoxFit.contain),
                        ),
                      );
  }
}
