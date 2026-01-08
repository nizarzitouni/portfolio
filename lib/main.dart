import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/firebase_options.dart';

import 'app/portfolio_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const PortfolioApp());
}



/**
 * for resizing images https://imageresizer.com/
 * change the version in pubspec 
 * run  
 *    flutter clean; flutter build web;
 * go to build/web/index.html and change 	<base href="/"> to 	<base href="./">
 * 
 * 
 *
 * 
 */

//TODO:
//i want to change the shape of each project and how is it displayed, isntead of rectangler a borring one, 
// lets make somthing like Screenshot_2 file token from this https://www.kamranbekirov.com/
// so basccly i need to find a trnasaprent movilme mock image, then i willusi and we put and image from the app
// inside that mock  



//after updating to flutter 3.22
//follow this https://docs.flutter.dev/platform-integration/web/bootstrapping
//and this https://gist.github.com/bizz84/08e6608cf7289a77c335e70122308857
