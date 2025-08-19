import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: BackdropFilter(filter: ImageFilter.blur(
            sigmaX: 5 ,sigmaY:5
          ))),
          SizedBox(height: 20,),
          RiveAnimation.asset('assets/RiveAssets/shapes.riv')
        ],
      ),
    );
  }
}
