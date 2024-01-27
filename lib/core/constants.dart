// import 'package:cloud_firestore/cloud_firestore.dart';

// FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

// ignore_for_file: unused_field, constant_identifier_names

import 'package:get_storage/get_storage.dart';

abstract class AssetsConstants {
  static const String _assetImagePath = 'assets/images/';
  static const String _assetIconPath = 'assets/icons/';
  static const String _assetSvgPath = 'assets/svgs/';
  static const String _assetSoundPath = 'assets/sounds/';
  static const String _assetLottieAnimPath = 'assets/animations/lotties_anim/';

  static const String _png = '.png';
  static const String _svg = '.svg';
  static const String _jpg = '.jpg';
  static const String _json = '.json';

//~~~~~~~~~~~~~~Images~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // static const String logoZeroImage = '${_assetImagePath}tuneHub text$_png';
  // static const String logoOneImage = '${_assetImagePath}tuneHub text 1$_png';
  static const String placeHolderImage = '${_assetImagePath}place_holder_img$_jpg';
  static const String flutterImage = '${_assetIconPath}flutter_logo$_png';
  static const String emailIcon = '${_assetIconPath}email$_png';

//~~~~~~~~~~~~~~Icons~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// static const String appDrawerImageIcon = '${_assetIconPath}app_drawer$_png';
//~~~~~~~~~~~~~~SVGS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // static const String voidSvg = '${_assetSvgPath}void$_svg';
  static const String emailSvg = '${_assetSvgPath}email$_svg';
  static const String githubSvg = '${_assetSvgPath}github$_svg';
  static const String gitlabSvg = '${_assetSvgPath}gitlab$_svg';
  static const String linkedinSvg = '${_assetSvgPath}linkedin$_svg';
  static const String sketchfabSvg = '${_assetSvgPath}sketchfab$_svg';
  static const String playstoreSvg = '${_assetSvgPath}playstore$_svg';
  static const String quoteSvg = '${_assetSvgPath}quote$_svg';
  // static const String searchSvg = '${_assetSvgPath}search$_svg';
//~~~~~~~~~~~~~~LottieAnimations~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // static const String uploadAnim = '${_assetLottieAnimPath}uploading_anim$_json';
  // static const String connectionLostAnim = '${_assetLottieAnimPath}connection_lost$_json';
  // static const String loadingAnim = '${_assetLottieAnimPath}loading_anim$_json';
//~~~~~~~~~~~~~~Audio~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // static const String localSound = '${_assetSoundPath}ccc.mp3';
}

// FirebaseFirestore firestore = FirebaseFirestore.instance;

//Storage init
final GetStorage storageBox = GetStorage();
const bookmarkBoxKey = "BookmarkList";
// Get a reference your Supabase client

const TRENDING_CATEGORY = 1;
const KIDS_CATEGORY = 2;
const POP_CATEGORY = 3;
const SCREEN_PADDING_VALUE = 10.0;

//__________________________________________________________________________________________________

const String NAME = "Nizar Zitouni";
const String BASEDIN = "Constantine, Algeria";
const String POS = "Software Engineer | Flutter Developer | 3D Artist";
const String ABOUT = '''Crafting software solutions, developing Flutter apps, and creating captivating 3D art.''';
const String LONGABOUT = '''
SOFTWARE ENGINEER | 3D ARTIST | FLUTTER DEVELOPER

• Proven track record in game development, mobile apps, and IT management.

• Expertise across full-stack, mobile (including Flutter), and blockchain domains.

• Specialized in creating visually stunning 3D environments and assets.

• Passionate about innovation, sustainability, and process automation.

''';

//
const double barsHight = 50;
