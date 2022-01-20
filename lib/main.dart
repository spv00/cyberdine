import 'dart:async';
import 'dart:html' as html;
import 'dart:ui' as ui;

import 'package:cyberdine/pages/build_pc_page.dart';
import 'package:cyberdine/pages/contact_page.dart';
import 'package:cyberdine/dark_theme.dart';
import 'package:cyberdine/light_theme.dart';
import 'package:cyberdine/pages/main_page.dart';
import 'package:cyberdine/pages/prebuilt_page.dart';
import 'package:cyberdine/util.dart';
import 'package:cyberdine/variables.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp>{

  Timer? timer;
  Widget body = MainPage();
  Widget oldBody = MainPage();

  AppBar appBar(){
    return AppBar(
      title: const Text(
        "Cyberdine", style: TextStyle(color: Colors.white),),
      actions: [
        IconButton(onPressed: () {Util.setHomePage(new MainPage());}, icon: const Icon(Icons.home_outlined)),
        const SizedBox(width: 20,),
        IconButton(onPressed: () {}, icon: Icon(Icons.chat_outlined)),
        const SizedBox(width: 20,),
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cyberdine',
      theme: darkTheme(),
      home: Scaffold(
        appBar: appBar(),
        drawer: Drawer(child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
              child: Text("Cyberdine\nMenu", style: TextStyle(fontSize: 50),)),
          ListTile(title: Text("Build your own pc"), onTap: () {Util.setHomePage(BuildPCPage());},),
          ListTile(title: Text("Get your PC repaired"), onTap: () {},),
          ListTile(title: Text("Buy Prebuilts"), onTap: () {},),
          ListTile(title: Text("Customer support"), onTap: () {},),
          ListTile(title: Text("Contact us"), onTap: () {Util.setHomePage(ContactPage());},),
        ],)),
        body: body,
      ),
    );
  }

  @override
  void initState(){
    timer = Timer.periodic(const Duration(milliseconds: 10), (Timer t) => checkIfBodyChanged());
    super.initState();
  }

  checkIfBodyChanged(){
    //print(Variables.body);
    if(oldBody != Variables.body){
      setState(() {
        body = Variables.body;
        oldBody = body;
      });
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    Variables.body = MainPage();
    super.dispose();
  }
}