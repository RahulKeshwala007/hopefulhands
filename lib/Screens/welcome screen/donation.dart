import 'package:flutter/material.dart';
import 'package:hopefulllhands/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Donation extends StatelessWidget {
  const Donation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Image.asset('assets/images/welcome1.png',
                            fit: BoxFit.fitWidth),
                      )),
                  Expanded(
flex: -1,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Touch Hearts",
                                style: GoogleFonts.pacifico(
                                    textStyle: const TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                    ))),
                            // SizedBox(height: 8,),
                            Text("Transform futures",
                                style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                    ))),
                          ])),
                  // Expanded(flex: 1,
                  //     child: Container()),
                ],
              ),
            )),
      ),
    );
  }
}
