import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/Signup.dart';

import 'Login.dart';

class Aftersplash extends StatefulWidget {

  @override
  _AftersplashState createState() => _AftersplashState();
}

class _AftersplashState extends State<Aftersplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Divider(),
          Text('Welcome',textAlign:TextAlign.center,style: GoogleFonts.raleway(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/welcome.png',width: 200,height: 200,),
          Divider(),
          Text('Se connecter via ',textAlign:TextAlign.center,style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 14),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GoogleAuthButton(onPressed: (){},
                darkMode: false,
                style: AuthButtonStyle(
                  buttonType: AuthButtonType.icon,
                ),
              ),
              FacebookAuthButton(onPressed: (){},
                darkMode: false,
                style: AuthButtonStyle(
                  buttonType: AuthButtonType.icon,
                ),
              )
            ],
          ),
          Text('Ou inscrivez vous par email',textAlign:TextAlign.center,style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 14),),
          ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signup()));
              },
              style: ElevatedButton.styleFrom(elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: HexColor('#578E4E')),
              child: Text('S`inscrire',style: GoogleFonts.raleway(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),)
          ),
          Divider(),
          Text('Déja inscrit ? Se connecter',textAlign:TextAlign.center,
            style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 14,),),
          Divider(),
          ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) =>Login()));
              },
              style: ElevatedButton.styleFrom(elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: HexColor('#578E4E')),

              child: Text('Se connecter',style: GoogleFonts.raleway(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),)
          ),
        ],
      ),


    );
  }
}
