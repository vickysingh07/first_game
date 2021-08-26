import 'package:first_game/model/tile_model.dart';

List<TileModel> getPairs(){
  List<TileModel> pairs = [];
  TileModel tileModel = TileModel(imageAssetPath: 'assets/captain.png', isSelected: false);

  tileModel.setImageAssetPath("assets/captain.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: 'assets/captain.png', isSelected: false);

  tileModel.setImageAssetPath("assets/captainmarvel.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: 'assets/captain.png', isSelected: false);

  tileModel.setImageAssetPath("assets/doctor.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: 'assets/captain.png', isSelected: false);

  tileModel.setImageAssetPath("assets/hulk.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: 'assets/captain.png', isSelected: false);

  tileModel.setImageAssetPath("assets/ironman.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: 'assets/captain.png', isSelected: false);

  tileModel.setImageAssetPath("assets/spiderman.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: 'assets/captain.png', isSelected: false);

  tileModel.setImageAssetPath("assets/thanos.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(imageAssetPath: 'assets/captain.png', isSelected: false);

  tileModel.setImageAssetPath("assets/thor.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  return pairs;
}

List<TileModel> getQuestions(){
  List<TileModel> pairs = [];
  TileModel tileModel = TileModel(isSelected: false, imageAssetPath: 'assets/question.jpg');

  tileModel.setImageAssetPath("assets/question.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(isSelected: false, imageAssetPath: 'assets/question.jpg');

  tileModel.setImageAssetPath("assets/question.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(isSelected: false, imageAssetPath: 'assets/question.jpg');

  tileModel.setImageAssetPath("assets/question.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(isSelected: false, imageAssetPath: 'assets/question.jpg');

  tileModel.setImageAssetPath("assets/question.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(isSelected: false, imageAssetPath: 'assets/question.jpg');

  tileModel.setImageAssetPath("assets/question.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(isSelected: false, imageAssetPath: 'assets/question.jpg');

  tileModel.setImageAssetPath("assets/question.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(isSelected: false, imageAssetPath: 'assets/question.jpg');

  tileModel.setImageAssetPath("assets/question.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = TileModel(isSelected: false, imageAssetPath: 'assets/question.jpg');

  tileModel.setImageAssetPath("assets/question.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  return pairs;
}