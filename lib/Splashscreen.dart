import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/Aftersplash.dart';

class Splashscreen extends StatefulWidget {

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  Timer timer;
  @override
  void initState() {
    super.initState();
    timer=new Timer(const Duration(seconds:5),()=>
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Aftersplash()
        )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Image.asset('assets/logo.png',width: 400,height: 400,alignment: Alignment.center,),
        ],
      ),
    );
  }
}
