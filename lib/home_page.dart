import 'package:flutter/material.dart';

import 'all_data/data.dart';
import 'model/tile_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 40,) ,
              points!=800 ? Column(
                children: [
                  Text("$points/800", style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  )),
                  const Text("Points"),
                ],
              ):Container(),
              const SizedBox(height: 20.0,),
              points != 800 ? GridView(
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
              ): Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(24)
                ),
                child: const Text("Replay", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                )),
              )
            ],
          ),
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
          if(selectedImageAssetPath != ""){
            if(selectedImageAssetPath == pairs[widget.tileIndex].getImageAssetPath()){
              print("c");
              imgselected = true;
              Future.delayed(const Duration(seconds: 2), (){
               points = points + 100;
               setState(() {
                 imgselected = false;
                 widget.parent.setState(() {
                   pairs[widget.tileIndex].setImageAssetPath("");
                   pairs[selectedTileIndex].setImageAssetPath("");
                 });
                 selectedImageAssetPath = "";
               });
              }
              );
            }else{
              print("w");
              imgselected = true;
              Future.delayed(const Duration(seconds: 2), (){
                imgselected = false;
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setIsSelected(false);
                  pairs[selectedTileIndex].setIsSelected(false);
                });
                selectedImageAssetPath = "";
              });
            }}else{
              selectedTileIndex = widget.tileIndex;
              selectedImageAssetPath = pairs[widget.tileIndex].getImageAssetPath();
          }
        setState(() {
          pairs[widget.tileIndex].setIsSelected(true);
        });
        }
      },
      child: Container(
        margin: const EdgeInsets.all(5.0),
        child: pairs[widget.tileIndex].getImageAssetPath() != ""? Image.asset(pairs[widget.tileIndex].getIsSelected() ? pairs[widget.tileIndex].getImageAssetPath(): widget.imageAssetPath):Image.asset("assets/correct.jpg")
      ),
    );
  }
}

