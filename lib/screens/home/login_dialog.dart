import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khelo_app/constants/app_colors.dart';
import 'package:khelo_app/constants/assets_constants.dart';
import 'package:khelo_app/constants/controller_tag_constants.dart';
import 'package:khelo_app/constants/string_constants.dart';
import 'package:khelo_app/constants/style_constants.dart';
import 'package:khelo_app/screens/home/home_controller.dart';
import 'package:khelo_app/utils/size_config.dart';

class LoginDialog extends StatelessWidget {
  const LoginDialog({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find(tag: ControllerTagConstants.homeScreenControllerTag);
    return Material(
      color: AppColors.transparentColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 20, vertical: SizeConfig.heightMultiplier * 10),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            border: Border.all(color: AppColors.themeColor2, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment,
            children: [
              GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: Padding(
                  padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 2.0, top: SizeConfig.heightMultiplier * 1.0),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.close,
                        color: AppColors.white,
                        size: SizeConfig.imageSizeMultiplier * 8,
                      )),
                ),
              ),
              Image.asset(
                AssetsConstants.logo,
                height: SizeConfig.heightMultiplier * 10,
                width: SizeConfig.widthMultiplier * 30,
              ),
              Text(
                "SIGN IN",
                style: StyleConstants.h514PxStyleBold(color: AppColors.white),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.themeColor2, width: 3),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: TextField(
                    controller: controller.mobileNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      hintStyle: TextStyle(
                        color: AppColors.white.withOpacity(0.6),
                        fontWeight: FontWeight.normal,
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.themeColor2, width: 3),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: TextField(
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: AppColors.white.withOpacity(0.6),
                        fontWeight: FontWeight.normal,
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 1,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Forgot Password",
                  textAlign: TextAlign.start,
                  style: StyleConstants.h612PxStyleBold(color: AppColors.white),),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
                child: Container(
                    height: SizeConfig.heightMultiplier * 5,
                    width: double.infinity,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
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
                        StringConstants.signIn,
                        style: StyleConstants.h612PxStyleMedium(color: AppColors.white),
                      ),
                    )),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
                child: Container(
                    height: SizeConfig.heightMultiplier * 5,
                    width: double.infinity,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.white, width: 3)
                    ),
                    child: Center(
                      child: Text(
                        StringConstants.registerNow,
                        style: StyleConstants.h612PxStyleMedium(color: AppColors.white),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
