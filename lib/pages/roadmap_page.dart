import 'package:flutter/material.dart';

class RoadmapPage extends StatefulWidget{
  @override
  _RoadmapPage createState() => _RoadmapPage();
}

class _RoadmapPage extends State<RoadmapPage>{
  ScrollController _scrollController = new ScrollController();
  double height = 0;

  Widget checklistItem(String name, bool done){
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("${name}", style: Theme.of(context).textTheme.headline3,),
      done ? Icon(Icons.check, size: 64) : Icon(Icons.crop_square_sharp, size: 64,),
    ],);
  }

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: MediaQuery.of(context).size.height, child: Column(children: [
      Container(width: double.infinity, height: 350, child: Container(padding: EdgeInsets.all(25), width: double.infinity, height: MediaQuery.of(context).size.height, child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(height: 0,),
        Text("Roadmap", style: Theme.of(context).textTheme.headline3, textAlign: TextAlign.center,),
        SizedBox(height: 50,),
        Icon(Icons.keyboard_arrow_down_rounded, size: 64,),
      ],),),),),
      Column(children: [
        checklistItem("Completed goal", true),
        checklistItem("Not completed goal", false),
      ],),
    ],),);
  }

  @override
  void initState() {
    _scrollController.addListener(() {setState(() {
      //height = (_scrollController.offset * 1.7).clamp(0, MediaQuery.of(context).size.height);
      //forgot i dont even fucking need this cuz this page doesnt even support scrolling
    });});
    super.initState();
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}