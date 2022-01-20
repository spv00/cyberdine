import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  Widget textField(String hint){
    return Container(width: 300, height: 80, child: TextField(decoration: InputDecoration(hintText: hint),),);
  }

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: double.infinity, child: Column(children: [
      Container(height: 250, width: double.infinity, child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center   ,children: [Text("Still indev. Not final", style: Theme.of(context).textTheme.headline3, textAlign: TextAlign.center,), Icon(Icons.keyboard_arrow_down_rounded, size: 64,),],),),),
      Expanded(child: Container(height: double.infinity, width: double.infinity, child:
        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly ,children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [textField("First Name"), textField("Last Name"), textField("E-Mail")],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Container(width: 500, height: 130, child: TextField(keyboardType: TextInputType.multiline, minLines: 5, maxLines: 32, decoration: InputDecoration(hintText: "What do you need help with", border: OutlineInputBorder()),),)],),
          //Center(child: Container(width: 250, height: 100, child: ElevatedButton(onPressed: (){}, child: Text("Submit", style: Theme.of(context).textTheme.headline3!.merge(TextStyle(fontSize: 64)),), style: Theme.of(context).elevatedButtonTheme.style,),),)
        ],)
      ))
    ],));
  }
}