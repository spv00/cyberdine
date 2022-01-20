import 'package:cyberdine/util.dart';
import 'package:flutter/material.dart';

class WideAnimatedCard extends StatefulWidget{
  String title;
  String description;
  String image;

  @override
  _WideAnimatedCard createState() => _WideAnimatedCard(title: title, description: description, image: image);

  WideAnimatedCard({required String this.title, required String this.description, required String this.image});
}

class _WideAnimatedCard extends State<WideAnimatedCard>{
  String title;
  String description;
  String image;

  _WideAnimatedCard({required String this.title, required String this.description, required String this.image});

  double height = 350;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(milliseconds: 400), height: height, width: double.infinity, child: InkWell(onTap: (){}, onHover: (hover){setState(() {
      hover ? height = 700 : height = 350;
    });}, child: Column(children: [
      Container(padding: EdgeInsets.all(15), width: double.infinity, child: Center(child: Text(title, style: Theme.of(context).textTheme.headline2!.merge(TextStyle(shadows: Util.outlinedText(strokeColor: Colors.black, strokeWidth: 2))),),),),
      Container(padding: EdgeInsets.all(15), width: double.infinity, child: Center(child: Text(description, style: Theme.of(context).textTheme.headline4!.merge(TextStyle(shadows: Util.outlinedText(strokeColor: Colors.black, strokeWidth: 2)),),),),),
    ],),), decoration: BoxDecoration(image: DecorationImage(image: Image.asset(image).image, fit: BoxFit.cover,)));
  }

}