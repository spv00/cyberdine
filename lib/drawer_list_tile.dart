import 'package:flutter/material.dart';

class DrawerListTile extends ListTile{
  Function action;
  DrawerListTile({Key? key, required Function this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: action(),
      title: Text("test"),
    );
  }
}