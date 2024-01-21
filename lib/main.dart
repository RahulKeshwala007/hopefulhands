

import 'package:flutter/material.dart';
import 'package:hopefulllhands/Screens/loginScreen.dart';
import 'package:hopefulllhands/Screens/splash_Screen.dart';
import 'package:hopefulllhands/Screens/welcome%20screen/welcome.dart';
import 'package:hopefulllhands/theme.dart';

import 'Screens/home.dart';

void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,

    initialRoute: '/splash',
    routes: {
      '/splash': (context)=>const SplashScreen(),
      '/welcome': (context)=> const Welcome(),
      '/login': (context)=> const Login(),
      '/home': (context)=> const home(),
    },
    theme: myTheme
  ));
}



