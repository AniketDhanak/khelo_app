import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:khelo_app/constants/app_colors.dart';
import 'package:khelo_app/constants/assets_constants.dart';
import 'package:khelo_app/constants/controller_tag_constants.dart';
import 'package:khelo_app/constants/string_constants.dart';
import 'package:khelo_app/constants/style_constants.dart';
import 'package:khelo_app/models/games_model.dart';
import 'package:khelo_app/screens/dashboard/dashboard_controller.dart';
import 'package:khelo_app/utils/gradient_text.dart';
import 'package:khelo_app/utils/size_config.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardController controller =
        Get.find(tag: ControllerTagConstants.dashboardControllerTag);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //slider
        sliderSection(controller),

        //language section
        languageSection(),

        //jackpot counter
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
        jackpotCounter(),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        liveWithdrawalSection(),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        promotionVideoWidget(),
        SizedBox(
          height: SizeConfig.heightMultiplier * 4,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: gamesWidget(controller))
      ],
    );
  }

  //slider
  Widget sliderSection(DashboardController controller) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: controller.sliderImgList.length,
          itemBuilder: (BuildContext context, int index, int pageViewIndex) {
            return Container(
              height: SizeConfig.heightMultiplier * 22,
              width: double.infinity,
              child: Image.asset(
                controller.sliderImgList[index],
                fit: BoxFit.fill,
              ),
            );
          },
          options: CarouselOptions(
            // aspectRatio: 2.0,
            height: SizeConfig.heightMultiplier * 30,
            viewportFraction: 1.0,
            enlargeCenterPage: true,
            onPageChanged: (int i, reason) {
              controller.currentSliderIndex.value = i;
            },
            autoPlayInterval: const Duration(seconds: 5),
            scrollDirection: Axis.horizontal,
            autoPlay: true,
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
        //indicators
        SizedBox(
          height: SizeConfig.heightMultiplier * 0.5,
          child: ListView.builder(
              itemCount: controller.sliderImgList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 1.0),
                    child: Obx(
                      () => Container(
                        height: controller.currentSliderIndex.value == index
                            ? SizeConfig.heightMultiplier * 1
                            : SizeConfig.heightMultiplier * 0.5,
                        width: SizeConfig.widthMultiplier * 8,
                        color: controller.currentSliderIndex.value == index
                            ? AppColors.themeColor2
                            : AppColors.grey,
                      ),
                    ));
              }),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
      ],
    );
  }

  //language
  Widget languageSection() => Stack(
        children: [
          Image.asset(
            AssetsConstants.langStrip,
            height: SizeConfig.heightMultiplier * 5,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 1.1),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StringConstants.englishTxt,
                  style: StyleConstants.h612PxStyleRegular(
                      color: AppColors.themeColor),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 4,
                ),
                Text(
                  StringConstants.hindiTxt,
                  style: StyleConstants.h612PxStyleRegular(
                      color: AppColors.themeColor),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 4,
                ),
                Text(
                  StringConstants.telaguTxt,
                  style: StyleConstants.h612PxStyleRegular(
                      color: AppColors.themeColor),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 4,
                ),
                Text(
                  StringConstants.kannadaTxt,
                  style: StyleConstants.h612PxStyleRegular(
                      color: AppColors.themeColor),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 4,
                ),
                Text(
                  StringConstants.marathiTxt,
                  style: StyleConstants.h612PxStyleRegular(
                      color: AppColors.themeColor),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 4,
                ),
                Text(
                  "...",
                  style: StyleConstants.h612PxStyleRegular(
                      color: AppColors.themeColor),
                )
              ],
            ),
          )
        ],
      );

  //jackpot counter
  Widget jackpotCounter() {
    return Stack(
      children: [
        Image.asset(
          AssetsConstants.jackpotImg,
          height: SizeConfig.heightMultiplier * 17,
          width: SizeConfig.widthMultiplier * 100,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 17,
          width: SizeConfig.widthMultiplier * 100,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 10,
                  top: SizeConfig.heightMultiplier * 2.5),
              child: Text(
                "1000000",
                textAlign: TextAlign.start,
                style: StyleConstants.h128PxStyleBold(
                    color: AppColors.redDark, letterSpacing: 11),
              ),
            ),
          ),
        ),
      ],
    );
  }

  //live withdrawal
  Widget liveWithdrawalSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const GradientText(
          StringConstants.liveWithdrawTxt,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, letterSpacing: -3),
          gradient: LinearGradient(colors: [
            AppColors.themeColor,
            AppColors.themeColor2,
          ]),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 0.5,
          width: SizeConfig.widthMultiplier * 40,
          decoration: const BoxDecoration(color: AppColors.themeColor2),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 4,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 20,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsConstants.withdrawalBoard,
                  ))),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.5, horizontal: SizeConfig.widthMultiplier * 2.5),
            child: GridView.builder(
              itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 72,
                ),
                itemBuilder: (context, index){
                  return usersItemWidget();
                }),
          ),
        )
      ],
    );
  }

  //user item widget
  Widget usersItemWidget(){
    return Row(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 6,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.themeColor2, width: 3.5)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 2.0),
            child: SvgPicture.asset(
              AssetsConstants.userImg,
              height: SizeConfig.heightMultiplier * 2.5,
            ),
          ),
        ),
        SizedBox(width: SizeConfig.widthMultiplier * 2,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Aniket ',
                    style: StyleConstants.h612PxStyleMedium(color: AppColors.white),
                    ),
                    TextSpan(
                        text: StringConstants.rupee,
                      style: StyleConstants.h612PxStyleMedium(color: AppColors.themeColor2),

                    ),
                    TextSpan(
                      text: '2000',
                      style: StyleConstants.h612PxStyleMedium(color: AppColors.white),
                    ),
                  ],
                ),
              ),
              Text("2 seconds ago",
                style: StyleConstants.h98PxStyleRegular(color: AppColors.white),
              ),
            ],
          ),
        )
      ],
    );
  }

  //promotion video
  Widget promotionVideoWidget(){
    return Container(
      height: SizeConfig.heightMultiplier * 25,
      width: SizeConfig.widthMultiplier * 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(AssetsConstants.videoThumbnail)
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10,
            top: 20,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.black.withOpacity(0.8)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 2, vertical: SizeConfig.heightMultiplier * 0.5),
                child: Text(StringConstants.kheloPromotion,
                style: StyleConstants.h612PxStyleMedium(color: AppColors.white,),),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 60,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.black.withOpacity(0.8)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 2, vertical: SizeConfig.heightMultiplier * 0.5),
                child: Text("Sam Smith",
                  style: StyleConstants.h612PxStyleMedium(color: AppColors.white,),),
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.black.withOpacity(0.8)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 2, vertical: SizeConfig.heightMultiplier * 0.5),
                child: Icon(Icons.play_arrow, color: AppColors.white, size: SizeConfig.imageSizeMultiplier * 8,)
            ),
          )
          ),
          Positioned(
              right: 10,
              bottom: 10,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.8)
                ),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 1, vertical: SizeConfig.heightMultiplier * 0.0),
                    child: Row(
                      children: [
                        Slider(value: 0, onChanged: (value){

                        }),
                        Icon(Icons.volume_up, color: AppColors.white, size: SizeConfig.imageSizeMultiplier * 6,),
                        Icon(Icons.settings, color: AppColors.white, size: SizeConfig.imageSizeMultiplier * 6,),
                        Icon(Icons.zoom_out_map, color: AppColors.white, size: SizeConfig.imageSizeMultiplier * 6,),

                      ],
                    )
                ),
              )
          ),
          Positioned(
              right: 10,
              top: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.8)
                ),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 2, vertical: SizeConfig.heightMultiplier * 0.5),
                    child: Icon(Icons.favorite_border, color: AppColors.white, size: SizeConfig.imageSizeMultiplier * 6,)
                ),
              )
          ),
          Positioned(
              right: 10,
              top: 60,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.8)
                ),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 2, vertical: SizeConfig.heightMultiplier * 0.5),
                    child: Icon(Icons.access_time_rounded, color: AppColors.white, size: SizeConfig.imageSizeMultiplier * 6,)
                ),
              )
          ),
          Positioned(
              right: 10,
              top: 100,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.8)
                ),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 2, vertical: SizeConfig.heightMultiplier * 0.5),
                    child: Icon(Icons.share, color: AppColors.white, size: SizeConfig.imageSizeMultiplier * 6,)
                ),
              )
          ),
        ],
      ),
    );
  }

  //games
  Widget gamesWidget(DashboardController controller){
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 50.0),
          child: Container(
            height: SizeConfig.heightMultiplier * 0.5,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
                color: AppColors.themeColor2),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        const GradientText(
          StringConstants.gamesTxt,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, letterSpacing: -3),
          gradient: LinearGradient(colors: [
            AppColors.themeColor,
            AppColors.themeColor2,
          ]),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 0.5,
          width: SizeConfig.widthMultiplier * 40,
          decoration: const BoxDecoration(color: AppColors.themeColor2),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.0,
        ),
        //most popular
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 4,
                    width: SizeConfig.widthMultiplier * 1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors.themeColor2),
                  ),
                  SizedBox(width: SizeConfig.widthMultiplier * 2,),
                  Text(
                    "${StringConstants.mostPopularTxt}(15)",
                    style: StyleConstants.h818PxStyleBold(color: AppColors.white),
                  ),
                ],
              ),
            ),
            // SizedBox(width: SizeConfig.widthMultiplier * 2,),
            Obx(() => GestureDetector(
              onTap: (){
                if(controller.showMore.value == false){
                  controller.showMore.value = true;
                }else{
                  controller.showMore.value = false;
                }

              },
              child: Container(
                  height: SizeConfig.heightMultiplier * 5,
                  width: SizeConfig.widthMultiplier * 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    gradient: const LinearGradient(
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
                      !controller.showMore.value ? StringConstants.showMoreTxt : StringConstants.hideTxt,
                      style: StyleConstants.h710PxStyleBold(color: AppColors.white),
                    ),
                  )),
            ),)
          ],
        ),
        Obx(() => Padding(
          padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.5, horizontal: SizeConfig.widthMultiplier * 2.5),
          child: GridView.builder(
              itemCount:controller.showMore.value ? controller.gamesList.length: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 175,
              ),
              itemBuilder: (context, index){
                return gamesItemWidget(controller.gamesList[index]);
              }),
        ),)
      ],
    );
  }


  Widget gamesItemWidget(GamesModel model){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 1.0, vertical: SizeConfig.heightMultiplier * 0.5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.themeColor2, width: 4)
        ),
        child: Column(
          children: [
            Image.asset(model.imgPath,
            height: SizeConfig.heightMultiplier * 14.5,
            width: double.infinity,
            fit: BoxFit.fill,),
            SizedBox(height: SizeConfig.heightMultiplier * 0.3,),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Min. ',
                    style: StyleConstants.h710PxStyleRegularWithoutSpacing(color: AppColors.white),
                  ),
                  TextSpan(
                    text: StringConstants.rupee,
                    style: StyleConstants.h710PxStyleRegularWithoutSpacing(color: AppColors.themeColor2),

                  ),
                  TextSpan(
                    text: model.min,
                    style: StyleConstants.h710PxStyleRegularWithoutSpacing(color: AppColors.white),
                  ),
                  TextSpan(
                    text: ' | ',
                    style: StyleConstants.h710PxStyleRegularWithoutSpacing(color: AppColors.themeColor2),
                  ),
                  TextSpan(
                    text: 'Max. ',
                    style: StyleConstants.h710PxStyleRegularWithoutSpacing(color: AppColors.white),
                  ),
                  TextSpan(
                    text: StringConstants.rupee,
                    style: StyleConstants.h710PxStyleRegularWithoutSpacing(color: AppColors.themeColor2),
                  ),
                  TextSpan(
                    text: model.max,
                    style: StyleConstants.h710PxStyleRegularWithoutSpacing(color: AppColors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
