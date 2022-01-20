import 'dart:ui';

import 'package:cyberdine/pages/contact_page.dart';
import 'package:cyberdine/main.dart';
import 'package:cyberdine/pages/prebuilt_page.dart';
import 'package:cyberdine/util.dart';
import 'package:cyberdine/variables.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatefulWidget{
  String serviceName;
  String serviceDetails;
  String image;
  Widget link;
  ServiceCard({required String this.serviceName, required String this.serviceDetails, required String this.image, required Widget this.link}) : super();

  @override
  _ServiceCard createState() => _ServiceCard(serviceName: serviceName, serviceDetails: serviceDetails, image: image, link: link);
}

class _ServiceCard extends State<ServiceCard>{
  String serviceName;
  String serviceDetails;
  String image;
  Widget link;
  _ServiceCard({required String this.serviceName, required String this.serviceDetails, required String this.image, required Widget this.link}) : super();

  double dividerSize = 1;
  double height = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - Variables.appBarHeight,
      width: double.infinity,
      decoration: BoxDecoration(),
      padding: EdgeInsets.all(15),
      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), border: Border.all(color: Colors.white10, width: 2)), width: double.infinity, height: double.infinity, child: Row(children: [
        Expanded(child: InkWell(onTap: (){Util.setHomePage(link);}, child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(child: Row(children: [Expanded(child: Container(child: Center(child: Text(serviceName, style: Theme.of(context).textTheme.headline3!.merge(TextStyle(fontSize: 64)),),),), flex: 5,), Expanded(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), image: DecorationImage(image: Image.asset(image).image, fit: BoxFit.cover)),), flex: 5,),],), flex: 5,),
          Expanded(child: Container(padding: EdgeInsets.all(35), child: Center(child: Text(serviceDetails, style: Theme.of(context).textTheme.headline4,),)), flex: 5,),
        ],),))
      ],),),
    );
  }
}