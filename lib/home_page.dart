import 'package:flutter/material.dart';

import 'all_data/data.dart';
import 'model/tile_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<TileModel> visiblePairs = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pairs = getPairs();
    pairs.shuffle();
    visiblePairs = pairs;
    imgselected = true;
    Future.delayed(const Duration(seconds: 5), () {
     setState(() {
       visiblePairs = getQuestions();
       imgselected = false;
     });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 40,) ,
            Text("$points/800", style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            )),
            const Text("Points"),
            const SizedBox(height: 20.0,),
            GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    mainAxisSpacing: 0.0
                ),
              children: List.generate(visiblePairs.length, (index){
                return Tile(
                  imageAssetPath: visiblePairs[index].getImageAssetPath(),
                  selected: visiblePairs[index].getIsSelected(),
                  parent: this,
                  tileIndex: index,
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
  int tileIndex;
  _HomePageState parent;
  Tile({required this.imageAssetPath, required this.parent, required this.selected, required this.tileIndex});
  //const Tile({Key? key}) : super(key: key);

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(!imgselected){
        setState(() {
          pairs[widget.tileIndex].setIsSelected(true);
        });
        }
      },
      child: Container(
        margin: const EdgeInsets.all(5.0),
        child: Image.asset(pairs[widget.tileIndex].getIsSelected() ? pairs[widget.tileIndex].getImageAssetPath(): widget.imageAssetPath)
      ),
    );
  }
}

