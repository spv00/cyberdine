import 'dart:collection';

import 'package:flutter/material.dart';

class ContactAlertDialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text("Contact info"),
      content: Text("Nonce Swiff"),
    );
  }
}