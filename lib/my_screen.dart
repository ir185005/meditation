import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meditation/list_of_items.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  ListOfItems listOfItems = ListOfItems();
  final player = AudioPlayer();

  void playSound(int soundIndex) {
    final player = AudioPlayer();
    player.setAsset(listOfItems.items[soundIndex].audioPath);
    player.play();
  }

  void stopSound(int soundIndex) {
    final player = AudioPlayer();
    var duration = player.setAsset(listOfItems.items[soundIndex].audioPath);
    player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: listOfItems.items.length,
          itemBuilder: (context, index) => Container(
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(listOfItems.items[index].imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: ListTile(
              leading: IconButton(
                onPressed: () {
                  playSound(index);
                },
                icon: Icon(Icons.play_arrow),
              ),
              title: Text(listOfItems.items[index].name),
            ),
          ),
        ),
      ),
    );
  }
}
