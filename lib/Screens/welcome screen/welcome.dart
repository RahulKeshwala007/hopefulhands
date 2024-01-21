import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hopefulllhands/Screens/welcome%20screen/donation.dart';
import 'package:hopefulllhands/Screens/welcome%20screen/volanteer.dart';
import 'package:hopefulllhands/constants.dart';
import 'package:hopefulllhands/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final PageController _controller = PageController();
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Page View
                Expanded(
                  flex: 12,
                  child: PageView(
                    controller: _controller,
                    children: const [
                      //donation
                      Donation(),
                      //volunteer
                      VolunTeer(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SmoothPageIndicator(
                          controller: _controller, count: 2)),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.of(context).pushReplacementNamed('/login'),
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 30, 10, 30),
                      decoration: const BoxDecoration(
                          color: PrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(33))),
                      padding: const EdgeInsets.fromLTRB(102, 12, 102, 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Get Involved',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ))),
                          // const SizedBox(width: 10),
                          const Icon(
                            CupertinoIcons.arrow_right,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
