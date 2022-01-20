import 'package:cyberdine/util.dart';
import 'package:flutter/material.dart';

class SquareStaticCard extends StatelessWidget{
  String name;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(height: MediaQuery.of(context).size.width / 2, width: MediaQuery.of(context).size.width / 2, child:
      Center(child: Text(name, style: Theme.of(context).textTheme.headline3!.merge(TextStyle(shadows: Util.outlinedText(strokeWidth: 2, strokeColor: Colors.black))),),),
        decoration: BoxDecoration(image: DecorationImage(image: Image.asset(image).image, fit: BoxFit.cover)),);
  }

  SquareStaticCard({required String this.name, required String this.image});
}