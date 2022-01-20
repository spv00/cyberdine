import 'dart:html';
import 'dart:ui';

import 'package:cyberdine/objects/prebuilt_pc_objects.dart';
import 'package:flutter/material.dart';

class PrebuiltPCCard extends StatefulWidget{
  String productName;
  String productDetails;
  PrebuiltPCObject pcSpecs;
  PrebuiltPCCard({Key? key, required String this.productName, required String this.productDetails, required PrebuiltPCObject this.pcSpecs}) : super(key: key);

  @override
  _PrebuiltPCCard createState() => _PrebuiltPCCard(productName: productName, productDetails: productDetails, pcSpecs: pcSpecs);
}

class _PrebuiltPCCard extends State<PrebuiltPCCard> {
  String productName;
  String productDetails;
  PrebuiltPCObject pcSpecs;
  _PrebuiltPCCard({required String this.productName, required String this.productDetails, required PrebuiltPCObject this.pcSpecs}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      padding: EdgeInsets.all(10),
      height: 400,
      child: Row(
        children: [
          Expanded(child: Column(children: [
            Container(child: Text(productName, style: TextStyle(fontSize: 42),),),
            Container(child: Text(productDetails, style: TextStyle(fontSize: 20), overflow: TextOverflow.fade,), height: 280,),
          ],),),
          Expanded(child: Image.asset(pcSpecs.image, height: 350,), flex: 2,),
          Column(children: [
            Expanded(child: Column(children: pcSpecs.specs.map((item) => new Container(alignment: Alignment.center, padding: EdgeInsets.all(10), child: Text(item, style: TextStyle(fontSize: 20), textAlign: TextAlign.right,))).toList(),)),
            Container(height: 90, child: Row(children: [
              Text("Buy: " + pcSpecs.price.toString(), style: TextStyle(fontSize: 28),),
              const Icon(Icons.attach_money_outlined, size: 32,),
              OutlinedButton(onPressed: (){setState(() {
                productName = "test1";
              });;}, child: Text("press")),
            ],))
          ],)
        ],
      )
    );
  }
}