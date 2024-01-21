import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hopefulllhands/constants.dart';
import 'package:hopefulllhands/theme.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: BGcolor,
          leading: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SvgPicture.asset('assets/images/Hlogo.svg')),
          leadingWidth: 190,
         actions: [
           Padding(
             padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
             child: Container(
               height: 60,
               width: 60,
               decoration: BoxDecoration(
                 color: CardColor,
                 border: Border.all(width: 1,color:Color(0xff60606080)),
                 borderRadius: BorderRadius.circular(60),
                 boxShadow:[
                   BoxShadow(
                       color: Color(0xff00000025),
                    blurRadius: 10,



                   )

                 ]
               ),
               child: Icon(Icons.notifications_active,color: Colors.white,)
             ),
           )
         ],


        ),

        //body..
        body: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [

            ],

          ),
        ),




      ),
    );
  }
}
