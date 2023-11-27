import 'dart:developer';

import 'package:get/get.dart';
import 'package:khelo_app/constants/assets_constants.dart';
import 'package:khelo_app/models/games_model.dart';

class DashboardController extends GetxController{


  var currentSliderIndex = 0.obs;

  var sliderImgList = [
    AssetsConstants.tenMinWith,
    AssetsConstants.banner18,
    AssetsConstants.banner11,
    AssetsConstants.dilSeKheloImg,
  ];

  var gamesList = <GamesModel>[].obs;
  var showMore = false.obs;

  @override
  void onInit() {
    super.onInit();
    gamesList.addAll([
      GamesModel(imgPath: AssetsConstants.game1, min: "10", max: "100k"),
      GamesModel(imgPath: AssetsConstants.game2, min: "100", max: "100k"),
      GamesModel(imgPath: AssetsConstants.game3, min: "100", max: "100k"),
      GamesModel(imgPath: AssetsConstants.game4, min: "100", max: "100k"),
      GamesModel(imgPath: AssetsConstants.game5, min: "100", max: "100k"),
      GamesModel(imgPath: AssetsConstants.game6, min: "100", max: "100k"),
    ]);
  }





}