// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class GlobalKeys {
  // Web keys
  static final KEY_WEB_HEADER = GlobalKey();
  static final KEY_WEB_HOME = GlobalKey();
  static final KEY_WEB_PROJECTS = GlobalKey();
  static final KEY_WEB_EXPERIENCE = GlobalKey();
  static final KEY_WEB_SKILLS = GlobalKey();
  static final KEY_WEB_ABOUTME = GlobalKey();
  static final KEY_WEB_CONTACTME = GlobalKey();
  static final KEY_WEB_MOBILEPORTFOLIO = GlobalKey();
  static final KEY_WEB_3DPORTFOLIO = GlobalKey();

  // Mobile keys
  static final KEY_MOB_HEADER = GlobalKey();
  static final KEY_MOB_HOME = GlobalKey();
  static final KEY_MOB_ABOUTME = GlobalKey();
  static final KEY_MOB_CONTACTME = GlobalKey();
  static final KEY_MOB_MOBILEPORTFOLIO = GlobalKey();
  static final KEY_MOB_3DPORTFOLIO = GlobalKey();
}

GlobalKey<ScaffoldState> KEY_DRAWER = GlobalKey<ScaffoldState>();
