import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Accueil.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Divider(),
          Image.asset('assets/logo.png',width: 100,height: 100,),
          Divider(),
          Text('Connexion',textAlign:TextAlign.center,style: GoogleFonts.raleway(fontSize: 20,fontWeight: FontWeight.bold),),
          Divider(),
          Padding(padding: EdgeInsets.all(8),),
          Form(
              child: Column(
                children: [
                  TextFormField(
                    style: GoogleFonts.raleway(),
                    decoration: InputDecoration(
                      hintText: "Email",
                      suffixIcon: Icon(Icons.email_rounded),
                      errorBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Colors.green,
                          )
                      ),
                      border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextFormField(
                    obscureText: true,
                    style: GoogleFonts.raleway(),
                    decoration: InputDecoration(
                      hintText: "Mot de passe",
                      suffixIcon: Icon(Icons.remove_red_eye),
                      errorBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Colors.green,
                          )
                      ),
                      border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => Accueil()));
                  },
                      style: ElevatedButton.styleFrom(elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          primary: HexColor('#578E4E')),
                      child: Container(
                        width: 300,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text('Se connecter',style: GoogleFonts.poppins(fontSize: 18,color: Colors.white),),
                      )),


                ],

              ))

        ],
      ),
    );
  }
}
