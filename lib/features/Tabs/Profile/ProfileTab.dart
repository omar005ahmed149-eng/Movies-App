import 'package:flutter/material.dart';

import '../../../core/resources/colors_manger.dart';

class Profiletab extends StatelessWidget {
  const Profiletab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManger.yellow,
      child: Center(child: Text("4",style: TextStyle(color: Colors.black,fontSize: 30),)),
    );  }
}
