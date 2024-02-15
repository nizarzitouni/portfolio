import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/firebase_options.dart';

import 'app/portfolio_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const PortfolioApp());
}
