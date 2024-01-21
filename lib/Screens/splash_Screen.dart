import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hopefulllhands/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin
{
void initState(){
  super.initState();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  Future.delayed(Duration(seconds: 3),(){
    Navigator.of(context).pushReplacementNamed('/welcome');

  });


}
void dispose(){
  super.dispose();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays:  SystemUiOverlay.values );


}
  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: BGcolor,
        body: Center(
          child: Container(
            child: SvgPicture.asset('assets/images/logo.svg'),


          ),
        ),

      ),

    );
  }
}
