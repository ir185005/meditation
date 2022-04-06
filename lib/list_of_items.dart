import 'item_model.dart';

class ListOfItems {
  List<ItemModel> items = [
    ItemModel(
      name: 'Forest',
      audioPath: 'assets/audio/forest.mp3',
      imagePath: 'assets/pictures/forest.jpeg',
    ),
    ItemModel(
      name: 'Night',
      audioPath: 'assets/audio/night.mp3',
      imagePath: 'assets/pictures/night.jpeg',
    ),
    ItemModel(
      name: 'Ocean',
      audioPath: 'assets/audio/ocean.mp3',
      imagePath: 'assets/pictures/ocean.jpeg',
    ),
    ItemModel(
      name: 'Waterfall',
      audioPath: 'assets/audio/waterfall.mp3',
      imagePath: 'assets/pictures/waterfall.jpeg',
    ),
    ItemModel(
      name: 'Wind',
      audioPath: 'assets/audio/wind.mp3',
      imagePath: 'assets/pictures/wind.jpeg',
    ),
  ];
}
