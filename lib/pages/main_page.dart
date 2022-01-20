import 'dart:html';
import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:cyberdine/pages/build_pc_page.dart';
import 'package:cyberdine/pages/contact_page.dart';
import 'package:cyberdine/main.dart';
import 'package:cyberdine/pages/prebuilt_page.dart';
import 'package:cyberdine/pages/upgrades_page.dart';
import 'package:cyberdine/service_card.dart';
import 'package:cyberdine/util.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../variables.dart';

class MainPage extends StatefulWidget{
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage>{
  ScrollController _scrollController = new ScrollController();
  double height = 0;
  TextStyle headerStyle(){
    return Theme.of(context).textTheme.headline1!.merge(TextStyle(shadows: Util.outlinedText(strokeColor: Colors.black, strokeWidth: 2)));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          //Title and header image
          Container(
            child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: height,),
              AnimatedTextKit(isRepeatingAnimation: false, totalRepeatCount: 1, animatedTexts: [TypewriterAnimatedText("Cyberdine Systems", speed: Duration(milliseconds: 100), cursor: ("|"), curve: Curves.decelerate, textStyle: headerStyle())],),
              Container(height: 100, child: AnimatedTextKit(isRepeatingAnimation: true, repeatForever: true, animatedTexts: [RotateAnimatedText("Fast", textStyle: headerStyle()), RotateAnimatedText("Reliable", textStyle: headerStyle()), RotateAnimatedText("Good", textStyle: headerStyle())]),),
              //Text("Welcome to\nCyberdine Systems", style: Theme.of(context).textTheme.headline1!.merge(TextStyle(shadows: Util.outlinedText(strokeColor: Colors.black, strokeWidth: 2))),),
              SizedBox(height: 50,),
              Icon(Icons.keyboard_arrow_down_rounded, size: 64,),
            ],),),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(image: DecorationImage(image: Image.asset('images/setup.jpg').image,  fit: BoxFit.cover)),
          ),
          //Services
          ServiceCard(serviceName: "Build a PC", serviceDetails: "We will build you a gaming/content creation PC suited to your needs and budget. Prices vary", image: 'images/pc_build.jpg', link: BuildPCPage(),),
          ServiceCard(serviceName: "Upgrades and overclocking", serviceDetails: "Tired of old tech letting you down, get an upgrade to your existing pc and an overclock.", image: 'images/pc_upgrade.jpg', link: UpgradesPage(),),
          ServiceCard(serviceName: "Hardware", serviceDetails: "Having problems with your PC bring it in and we will fix any hardware that’s misbehaving", image: 'images/gpu.jpg', link: MainPage(),),
          //About us section
          FractionallySizedBox(widthFactor: 0.9, child: Container(
            child: Center(child: Column(children: [
              Text("About us", style: Theme.of(context).textTheme.headline4,),
              Row(children: [
                Expanded(child: Text("Unlike Skynet from the Terminator Series, I don't have a desire for ending the human race. Rather juxtaposing I want to help people out with their PC's, after years of building and upgrading my own personal rig along with helping out family and friends I decided I wanted to expand my skills and help other less tech savvy people too.", style: Theme.of(context).textTheme.bodyText1,), flex: 5,),
                const Expanded(child: SizedBox(), flex: 1,),
                Expanded(child: Text("We have years of experience with building pc’s, hardware and software and want to offer our services", style: Theme.of(context).textTheme.bodyText1,), flex: 4,)
              ],),
            ],)),
          )),
          Container(padding: EdgeInsets.all(15),child: Divider(height: 6, color: Colors.grey[300], thickness: 1)),
          //Social media Icons
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(onPressed: () {Util.launchUrl("https://www.twitter.com");}, icon: FaIcon(FontAwesomeIcons.twitterSquare)),
            IconButton(onPressed: () {Util.launchUrl("https://www.facebook.com");}, icon: FaIcon(FontAwesomeIcons.facebookSquare)),
            IconButton(onPressed: () {Util.launchUrl("https://www.youtube.com");}, icon: FaIcon(FontAwesomeIcons.youtubeSquare)),
          ],),
          const Text("Copyright: spv (i dont actually have a copyright for this. pls dont steal :D)"),
        ],
      ),
    );
  }

  @override void initState() {
    _scrollController.addListener(() {setState(() {
      height = (_scrollController.offset * 1.7).clamp(0, MediaQuery.of(context).size.height - 289);
    });});
    super.initState();
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

