class GamesModel{
  final String imgPath;
  final String min;
  final String max;

  GamesModel({required this.imgPath,required this.min,required this.max,});

}

class GameCategoriesModel{
  String categoryName;
  int count;
  List<GamesModel> gamesList;

  GameCategoriesModel({required this.categoryName, required this.count, required this.gamesList});
}