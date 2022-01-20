import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cyberdine/util.dart';
import 'package:flutter/material.dart';

import '../variables.dart';
import '../wide_animated_card.dart';

class BuildPCPage extends StatefulWidget{
  @override
  _BuildPCPage createState() => _BuildPCPage();
}

class _BuildPCPage extends State<BuildPCPage>{
  ScrollController _scrollController = new ScrollController();
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(controller: _scrollController, child: Container(width: double.infinity, child:
      Column(children: [
        Container(padding: EdgeInsets.all(25), width: double.infinity, height: MediaQuery.of(context).size.height, child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: height,),
          Text("The perfect Setup for YOUR needs!", style: Theme.of(context).textTheme.headline3, textAlign: TextAlign.center,),
          SizedBox(height: 100,),
          Icon(Icons.keyboard_arrow_down_rounded, size: 64,),
        ],),),),
        WideAnimatedCard(title: "Video Editing", description: "The perfect setup to edit your videos with optimal performance", image: "images/video_editing.jpg",),
        SizedBox(height: 15,),
        WideAnimatedCard(title: "Photo Editing", description: "Make the perfect moment even better as seamlessly as possible", image: "images/photo_editing.jpg",),
        SizedBox(height: 15,),
        WideAnimatedCard(title: "Gaming", description: "More fps = more kills?", image: "images/gaming.jpg"),
        SizedBox(height: 15,),
        WideAnimatedCard(title: "Development", description: "No more crashes. Superfast compiling times", image: "images/development.png"),
        SizedBox(height: 15,),
        WideAnimatedCard(title: "Recording", description: "All you could ever need for any kind of recording", image:"images/recording.jpg"),
      ],),
    ),);
  }

  @override void initState() {
    _scrollController.addListener(() {setState(() {
      height = (_scrollController.offset * 1.7).clamp(0, MediaQuery.of(context).size.height - 267);
    });});
    super.initState();
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}