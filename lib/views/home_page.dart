import 'package:flutter/material.dart';
import 'package:test_web/globals/app_colors.dart';
import 'package:test_web/globals/app_text_styles.dart';

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
                    Text('Hello, it\'s Me', style: AppTextStyles.monteseratStyle(),),
                    Text('Ayten Huseynzade', style: AppTextStyles.headingtStyle(),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
