import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khelo_app/constants/app_colors.dart';
import 'package:khelo_app/constants/assets_constants.dart';
import 'package:khelo_app/constants/controller_tag_constants.dart';
import 'package:khelo_app/constants/string_constants.dart';
import 'package:khelo_app/constants/style_constants.dart';
import 'package:khelo_app/screens/dashboard/dashboard_screen.dart';
import 'package:khelo_app/screens/home/home_controller.dart';
import 'package:khelo_app/utils/custom_painters.dart';
import 'package:khelo_app/utils/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.find(tag: ControllerTagConstants.homeScreenControllerTag);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 2.0),
          child: Column(
            children: [
              header(controller),
              Expanded(
                child: ListView(
                  children: const [
                    DashboardScreen()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigation(size),
    );
  }

  Widget header(HomeController controller) {
    return Row(
      children: [
        Image.asset(
          AssetsConstants.logo,
          height: SizeConfig.heightMultiplier * 5,
          width: SizeConfig.widthMultiplier * 28,
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsConstants.promotionIcon,
                  height: SizeConfig.heightMultiplier * 3.0,
                  width: SizeConfig.widthMultiplier * 10,
                ),
                Text(
                  StringConstants.promotionsTxt,
                  style: StyleConstants.h710PxStyleBold(
                      color: AppColors.themeColor),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 2,
        ),
        GestureDetector(
          onTap: (){
            controller.onTapLogin();
          },
          child: Container(
              height: SizeConfig.heightMultiplier * 5,
              width: SizeConfig.widthMultiplier * 20,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.themeColor2,
                    AppColors.themeColor,
                    AppColors.themeColor2,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.topCenter,
                  stops: [0.1, 0.4, 0.1],
                ),
              ),
              child: Center(
                child: Text(
                  StringConstants.loginTxt,
                  style: StyleConstants.h612PxStyleMedium(color: AppColors.white),
                ),
              )),
        )
      ],
    );
  }

  Widget bottomNavigation(dynamic size) {
    return Container(
      width: double.infinity,
      height: SizeConfig.heightMultiplier * 10,
      decoration: const BoxDecoration(
        color: AppColors.backgroundColor,
      ),
      child: Stack(
        children: [
          Stack(
            children: [
              CustomPaint(
                size: Size(size.width, 80),
                painter: BottomNavLeftPainter(),
              ),
              CustomPaint(
                size: Size(size.width, 80),
                painter: BottomNavRightPainter(),
              ),
            ],
          ),
          Center(
              heightFactor: 0.1,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: AppColors.themeColor2,
                child: Icon(Icons.add,
                  size: SizeConfig.imageSizeMultiplier * 7,
                  color: AppColors.black,),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              bottomNavItem(AssetsConstants.bottomNav1,StringConstants.supportTxt),
              bottomNavItem(AssetsConstants.bottomNav2,StringConstants.sportsTxt),
              bottomNavItem(AssetsConstants.bottomNav3,StringConstants.liveCasinoTxt),
              bottomNavItem(AssetsConstants.bottomNav4,StringConstants.registerTxt),
            ],
          )
        ],
      ),
    );
  }

  Widget bottomNavItem(String imgPath, String title){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imgPath,
          height: SizeConfig.heightMultiplier * 3,
          width: SizeConfig.widthMultiplier * 25,
        ),
        Text(
          title,
          style: StyleConstants.h710PxStyleBold(color: AppColors.white),
        ),
      ],
    );
  }

}


