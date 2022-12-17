import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WhistlePage extends StatelessWidget {
  const WhistlePage({Key? key}) : super(key: key);

 // manuel bir şekilde acil durumda app üzerinden düdük çalma 
  @override
  Widget build(BuildContext context) {
    return Container(
       child:  Center(child: Text("Whistle page"))
    ); 
  }
}