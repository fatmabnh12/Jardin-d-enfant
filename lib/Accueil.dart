import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Accueil extends StatefulWidget {

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Bienvenue",style: GoogleFonts.poppins(letterSpacing: 1,fontWeight:FontWeight.bold,fontSize: 15,color: Colors.black,),),
              Image.asset('assets/logo.png',width: 50,),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Divider(),
          Text('Toute une équipe  \n'
              'pour le bonheur de vos enfants',
            textAlign: TextAlign.center,style: GoogleFonts.raleway(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black54),),
          Image.asset('assets/p2.png',width: 300,height: 300,),
          Divider(),
          Text('Qui sommes nous ?',
            textAlign: TextAlign.center,style: GoogleFonts.raleway(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
          Divider(),
          Text('Est un jardin d’enfants bilingue '
          'équipé et étudié pour garantir l’épanouissement de chaque enfant. \n'
          'Des éducatrices et assistantes spécialisées et expérimentées'
          'encadrent des enfants de 2 à 5 ans qui sont répartis en petits'
          'groupes de 15',textAlign: TextAlign.center,style: GoogleFonts.raleway(fontSize: 12,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Nos Activités ',
            textAlign: TextAlign.center,style: GoogleFonts.raleway(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
          Divider(),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Card(
              child: Column(
                children: [
                  Image.asset('assets/paint.png',width: 80,),
                  Text('Peinture',style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                ],
              ),
               shape: RoundedRectangleBorder(),
               color: Colors.white,
               elevation: 2,
               clipBehavior: Clip.antiAlias,
             ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/th.png',width: 80,),
                    Text('Théâtre',style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                  ],
                ),
                shape: RoundedRectangleBorder(),
                color: Colors.white,
                elevation: 2,
                clipBehavior: Clip.antiAlias,
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/music.png',width: 80,),
                    Text('Eveil musical',style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                  ],
                ),
                shape: RoundedRectangleBorder(),
                color: Colors.white,
                elevation: 2,
                clipBehavior: Clip.antiAlias,
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/lego.png',width: 80,),
                    Text('Jeux interactifs',style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                  ],
                ),
                shape: RoundedRectangleBorder(),
                color: Colors.white,
                elevation: 2,
                clipBehavior: Clip.antiAlias,
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/dance.png',width: 80,),
                    Text('Club de danse',style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                  ],
                ),
                shape: RoundedRectangleBorder(),
                color: Colors.white,
                elevation: 2,
                clipBehavior: Clip.antiAlias,
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/lig.png',width: 80,),
                    Text('Activité linguistique',style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                  ],
                ),
                shape: RoundedRectangleBorder(),
                color: Colors.white,
                elevation: 2,
                clipBehavior: Clip.antiAlias,
              ),
            ],
          ),
          Divider(),
          Text('Contact',
            textAlign: TextAlign.center,style: GoogleFonts.raleway(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
          Image.asset('assets/contact.png',width: 300,height: 300,),
        ],

      ),
    );
  }
}
