import 'package:flutter/material.dart';

import 'all_data/data.dart';
import 'model/tile_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<TileModel> pairs = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pairs = getPairs();
    pairs.shuffle();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Text("0/800"),
            const Text("Points"),
            const SizedBox(height: 20.0,),
            GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    mainAxisSpacing: 0.0
                ),
              children: List.generate(pairs.length, (index){
                return Tile(
                  imageAssetPath: pairs[index].getImageAssetPath(),
                  selected: pairs[index].getIsSelected(),
                  parent: this,
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  String imageAssetPath;
  bool selected;
  _HomePageState parent;
  Tile({required this.imageAssetPath, required this.parent, required this.selected});
  //const Tile({Key? key}) : super(key: key);

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: Image.asset(widget.imageAssetPath),
    );
  }
}

