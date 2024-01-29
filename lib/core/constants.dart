// import 'package:cloud_firestore/cloud_firestore.dart';

// FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

// ignore_for_file: unused_field, constant_identifier_names

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
  static const String downloadSvg = '${_assetSvgPath}download$_svg';
  // static const String searchSvg = '${_assetSvgPath}search$_svg';
//~~~~~~~~~~~~~~LottieAnimations~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // static const String uploadAnim = '${_assetLottieAnimPath}uploading_anim$_json';
  // static const String connectionLostAnim = '${_assetLottieAnimPath}connection_lost$_json';
  // static const String loadingAnim = '${_assetLottieAnimPath}loading_anim$_json';
//~~~~~~~~~~~~~~Audio~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // static const String localSound = '${_assetSoundPath}ccc.mp3';
}

//__________________________________________________________________________________________________

//Profile Data
const String NAME = "Nizar Zitouni";
const String BASEDIN = "Constantine, Algeria";
const String POS = "Software Engineer | Flutter Developer | 3D Artist";
const String ABOUTPROFILE = '''Crafting software solutions, developing Flutter apps, and creating captivating 3D art.''';
const String LONGABOUT =
    'Experienced Software Engineer and Flutter Developer with a Master\'s degree in Software Engineering. Specializing in Flutter, I excel in rapid prototyping, full-stack development, and IT management. Passionate about crafting innovative and seamless mobile experiences, with an additional flair for 3D art. Committed to staying ahead in technology and delivering user-centric solutions.';

//
const double barsHight = 50;

const String HOME_HEADER = "Home";
const String ABOUT_HEADER = "About";
const String MOBILEPROJECTS_HEADER = "Mobile Projects";
const String THREED_HEADER = "3D Projects";
const String CONTACT_HEADER = "Contact";
