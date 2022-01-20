import 'package:cyberdine/pages/build_pc_page.dart';
import 'package:cyberdine/service_card.dart';
import 'package:cyberdine/square_static_card.dart';
import 'package:flutter/material.dart';

import '../wide_animated_card.dart';
import '../util.dart';

class UpgradesPage extends StatefulWidget{
  @override
  _UpgradesPage createState() => _UpgradesPage();
}

class _UpgradesPage extends State<UpgradesPage>{
  double height = 0;
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(controller: _scrollController, child: Container(width: double.infinity, child:
      Column(children: [
        Container(padding: EdgeInsets.all(25), width: double.infinity, height: MediaQuery.of(context).size.height, child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: height,),
          Text("Need Upgrades?", style: Theme.of(context).textTheme.headline3, textAlign: TextAlign.center,),
          Icon(Icons.keyboard_arrow_down_rounded, size: 64,),
        ],),),),
        Container(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.width, child: GridView.count(crossAxisCount: 2, children: [
          SquareStaticCard(name: "Overclocking", image: "images/overclocking.jpg",),
          SquareStaticCard(name: "Upgrades", image: "images/new_parts.jpg",),
          SquareStaticCard(name: "RGB", image: "images/rgb.jpg",),
          Center(child: Text("And much more", textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline3,)),
        ],),)
      ])
    ));
  }

  @override void initState() {
    _scrollController.addListener(() {setState(() {
      height = (_scrollController.offset * 1.7).clamp(0, MediaQuery.of(context).size.height - 167);
    });});
    super.initState();
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}