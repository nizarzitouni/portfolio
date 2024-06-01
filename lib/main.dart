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
 * run  flutter clean; flutter build web;
 * go to build/web/index.html and change 	<base href="/"> to 	<base href="./">
 * 
 * 
 * https://www.quiet.fun/jobs/seniordevflutter/
 * https://www.phind.com/search?cache=pqrrwr2jlf735hxr4jh3xi3e&source=sidebar
 */

//after updating to flutter 3.22
//follow this https://docs.flutter.dev/platform-integration/web/bootstrapping
//and this https://gist.github.com/bizz84/08e6608cf7289a77c335e70122308857
