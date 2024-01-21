import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hopefulllhands/constants.dart';
import 'package:hopefulllhands/theme.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // late bool flag;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Logo section
              Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: SvgPicture.asset("assets/images/logo.svg"),
                  )),
              // Form
              Expanded(
                flex: 2,
                  child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Username

                      TextFormField(
                        style: GoogleFonts.poppins(
                          color: Colors.white60,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          letterSpacing: 2,


                        ),

                        decoration: InputDecoration(
                          // labelText: 'Username / Email',
                          labelStyle: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                          errorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 1.0,
                              )),
                          hintText: 'Username / Email',
                          hintStyle: const TextStyle(color: Colors.white60),
                          filled: true,
                          focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                color: SecondaryColor,
                                width: 1.0,
                              )),
                          border: InputBorder.none,
                          fillColor: CardColor,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                        ),
                      ),

                      // Password

                      TextFormField(
                        style: GoogleFonts.poppins(
                          color: Colors.white60,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          letterSpacing: 2,


                        ),
                        obscureText:true,
                        decoration: InputDecoration(
                          // labelText: 'Password',
                          labelStyle: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                          hintText: 'Password',

                          hintStyle: const TextStyle(color: Colors.white60),
                          errorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 1.0,
                              )),

                          //  for Error

                          // errorText: "* Username Dons't Exist",
                          // errorStyle: TextStyle(color: Colors.redAccent),
                          filled: true,
                          focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                color: SecondaryColor,
                                width: 1.0,
                              )),
                          border: InputBorder.none,
                          enabled: true,
                          fillColor: CardColor,
                          suffixIcon: IconButton(
                            onPressed: () {
                              // setState(() {
                              //   eyeopen ? flag = false;  flag = true;
                              // });
                            },
                            icon:Icon(CupertinoIcons.eye,color: Colors.white,)

                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                        ),
                      ),

                      Container(
                        // margin: EdgeInsets.fromLTRB(0,, 0, 5),
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () => {
                            Navigator.of(context).pushReplacementNamed('/home'),
                          },
                          style: ButtonStyle(

                            backgroundColor: const MaterialStatePropertyAll(PrimaryColor),
                            shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: const BorderSide(color: PrimaryColor)
                              ),
                            ),
                          ),
                          child: Text(
                            "Log in",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),

              Expanded(flex: 2, child: Padding(
                
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children:[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[ Text("Don't Have An Account ?",style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1
                        ),
                        ),
                          TextButton(onPressed: ()=>{}, child: Text("Sign Up",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: SecondaryColor,
                          ),))
                        ]
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Expanded(
                          child:Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: CardColor,
                                borderRadius: BorderRadius.circular(4),
                              ),

                              child: Image.asset("assets/images/Google.png",fit: BoxFit.scaleDown,)
                          )),


                      Expanded(
                          child:Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(23),
                              decoration: BoxDecoration(
                                color: CardColor,
                                borderRadius: BorderRadius.circular(4),
                              ),

                              child: Image.asset("assets/images/Call.png",fit: BoxFit.scaleDown,)
                          )),
                      Expanded(
                          child:Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(23),
                              decoration: BoxDecoration(
                                color: CardColor,
                                borderRadius: BorderRadius.circular(4),
                              ),

                              child: Image.asset("assets/images/facebook.png")
                          )),
                      Expanded(
                          child:Container(
                            margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(23),
                              decoration: BoxDecoration(
                                color: CardColor,
                                borderRadius: BorderRadius.circular(4),
                              ),

                              child: Image.asset("assets/images/Vector.png",fit: BoxFit.scaleDown,)
                          )),


                    ],
                  ),
                    // Expanded(
                    //     flex: -1,
                    //     child: Container()),
               ] ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class Signincard extends StatefulWidget {
  const Signincard({
    super.key,
    required iconimage,
    required ontap,


  });

  @override
  State<Signincard> createState() => _SignincardState();
}

class _SignincardState extends State<Signincard> {
  late Image iconimage ;
  late Function ontap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:GestureDetector(
        onTap:ontap(),
        child: Container(
            margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: CardColor,
            borderRadius: BorderRadius.circular(4),
          ),

          child: iconimage,
        ),
      ));
  }
}
