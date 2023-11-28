import 'dart:async';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:khelo_app/constants/assets_constants.dart';
import 'package:khelo_app/models/games_model.dart';
import 'package:khelo_app/models/users_model.dart';

class DashboardController extends GetxController{


  var currentSliderIndex = 0.obs;

  var counter = 0.obs;
  Timer? timer;


  var sliderImgList = [
    AssetsConstants.tenMinWith,
    AssetsConstants.banner18,
    AssetsConstants.banner11,
    AssetsConstants.dilSeKheloImg,
  ];

  var gamesList = <GamesModel>[].obs;
  var gameCategoriesList = <GameCategoriesModel>[].obs;
  var showMore = false.obs;
  var showMoreList = <bool>[].obs;

  var usersList = <UsersModel>[].obs;
  var usersListGrid = <int>[].obs;
  var usersCarsolIndex = 0.obs;

  var tempList = <UsersModel>[].obs;
  var tempListStartIndex = 0.obs;
  var tempListEndIndex = 4.obs;

  Future<dynamic> addDataToList()async{
    usersList.addAll([
      UsersModel(userName: "Aniket", amount: "100", time: "2"),
      UsersModel(userName: "Ram", amount: "200", time: "0"),
      UsersModel(userName: "Sham", amount: "300", time: "1"),
      UsersModel(userName: "Rohit", amount: "400", time: "4"),
      UsersModel(userName: "Virat", amount: "500", time: "5"),
      UsersModel(userName: "Rahul", amount: "600", time: "7"),
      UsersModel(userName: "Sachin", amount: "700", time: "8"),
      UsersModel(userName: "Shubham", amount: "800", time: "0"),
    ]);
    gamesList.addAll([
      GamesModel(imgPath: AssetsConstants.game1, min: "10", max: "100k"),
      GamesModel(imgPath: AssetsConstants.game2, min: "100", max: "100k"),
      GamesModel(imgPath: AssetsConstants.game3, min: "100", max: "100k"),
      GamesModel(imgPath: AssetsConstants.game4, min: "100", max: "100k"),
      GamesModel(imgPath: AssetsConstants.game5, min: "100", max: "100k"),
      GamesModel(imgPath: AssetsConstants.game6, min: "100", max: "100k"),
    ]);
    gameCategoriesList.addAll([
      GameCategoriesModel(categoryName: "Most Popular", count: 15, gamesList: gamesList),
      GameCategoriesModel(categoryName: "Playtech Live", count: 103,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Live Roulette", count: 45,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Live Blackjack", count: 133,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Live Dealer", count: 33,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Live Baccarat", count: 74,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Playtech", count: 273,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Live Lobby", count: 20,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Play'n GO", count: 269,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Crash Games", count: 8,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Casual Games", count: 8,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Live Poker", count: 24,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Blackjack", count: 3,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Live Sic Bo", count: 7,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Roulette", count: 10,gamesList: gamesList),
      GameCategoriesModel(categoryName: "Live Dragon Tiger", count: 6,gamesList: gamesList),
    ]);
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  void onInit() {
    super.onInit();

    addDataToList().then((value) {
      var count = usersList.length / 2 ;
      log("count $count");
      tempListEndIndex.value = usersList.length >= 4 ? 4 : usersList.length;
      for(int i = tempListStartIndex.value ; i < tempListEndIndex.value; i++){
        tempList.add(UsersModel(userName: usersList[i].userName, amount: usersList[i].amount, time: usersList[i].time));
      }
      usersListGrid.isNotEmpty ? usersListGrid.length = count.round(): usersListGrid.length = 0;
      for (var element in gameCategoriesList) {
        showMoreList.add(false);
      }
    });

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      counter.value ++;
      // log(counter.value.toString());
    });

  }



  @override
  void onClose() {
    timer!.cancel();
    super.onClose();
  }


}