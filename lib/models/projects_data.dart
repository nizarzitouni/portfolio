import '../core/image_paths.dart';
import 'project_image_model.dart';
import 'project_model.dart';

abstract class ProjectData {
  static List<ProjectModel> mobileDevProjectList = [
    // First version of Stretchy (inspired by Bend)
    ProjectModel(
      projectId: 2,
      projectTitle: "DUPLI - Your AI Clone",
      playStoreUrl: "https://play.google.com/store/apps/details?id=com.techconsolidated.avatarcloneyourself",
      appStoreUrl: "https://apps.apple.com/cm/app/dupli-your-ai-clone/id6740580236",
      projectDescription:
          "DUPLI is an innovative AI avatar cloning application that allows users to create digital versions of themselves. Built while working for a tech company, this app enables users to train AI with their unique information to replicate their communication style, voice, and personality. Features include text chat with avatars, voice call functionality, access to user-created clones, and personalized AI assistance. The app implements advanced machine learning models with a clean, intuitive interface designed for seamless user experience.",
      techStacks: [
        "Flutter",
        "BLoC Pattern",
        "Firebase",
        "Speech To Text ",
        "RESTful APIs",
        "RESTful APIs",
        "Cloud Functions",
        "Local Authentication",
      ],
      role:
          "Lead Flutter Developer responsible for app architecture, implementing real-time communication features, integrating AI models, and optimizing performance for resource-intensive operations",
      projectImageModel: dupliImages, // Define this variable for screenshots
      isLive: true,
      githubUrl: null, // Likely private repository
      appScreens: ImagesPath.dupliImgListScreens, // Define this path for app screens
      carouselFullWidth: false,
      behanceLink: null,
    ),
    ProjectModel(
      projectId: 3,
      projectTitle: "Stretchy: Daily Stretches (v1)",
      liveUrl: "https://www.appbrain.com/app/stretchy:-daily-stretches/nz.dev.stretchy",
      projectDescription:
          "The first version of Stretchy was inspired by the popular app 'Bend', created as a learning project to understand app development principles. This version offered daily stretching routines with timer-guided exercises designed for all experience levels. Featuring animated demonstrations and progress tracking, this initial release helped users improve mobility and flexibility through structured routines.",
      techStacks: [
        "Flutter",
        "BLoC/Cubit",
        "Firebase Remote Config",
        "Shared Preferences",
      ],
      role: "Sole creator of the entire app",
      projectImageModel: stretchyV1Images,
      isLive: true,
      githubUrl: null,
      appScreens: ImagesPath.stretchyV1ImgListScreens,
      carouselFullWidth: false,
      behanceLink: null,
    ),

    ProjectModel(
      projectId: 4,
      projectTitle: "Stretchy: Daily Stretches (v2)",
      playStoreUrl: "https://play.google.com/store/apps/details?id=com.nzdev.stretchyapp",
      projectDescription:
          "The completely redesigned version of Stretchy features an original UI/UX with enhanced functionality. This version offers 10+ specialized routines including morning stretches, desk breaks, posture correction, and targeted body workouts. With animated demonstrations, timer-guided sessions, and improved progress tracking, Stretchy v2 provides a comprehensive stretching experience for users of all fitness levels.",
      techStacks: [
        "Flutter",
        "BLoC/Cubit",
        "Firebase Remote Config",
        "Firebase Analytics",
        "Repository Pattern",
        "Shared Preferences",
      ],
      role: "Sole creator of the entire app",
      projectImageModel: stretchyV2Images,
      isLive: true,
      githubUrl: null,
      appScreens: ImagesPath.stretchyV2ImgListScreens,
      carouselFullWidth: false,
      behanceLink: null,
    ),
    ProjectModel(
      projectId: 13,
      projectTitle: "Just Delete Me",
      playStoreUrl: "https://play.google.com/store/apps/details?id=com.nizarztn.justdeleteme",
      projectDescription:
          "\"JUST DELETE ME\" is a directory simplifying the account deletion process by countering dark pattern techniques used by companies. With over 10k downloads on the store, this Flutter app has successfully provided users with a straightforward solution for managing their online presence.",
      techStacks: [
        "GetX",
        "Shared Preferences",
      ],
      role: "Sole creator of the entire app",
      projectImageModel: jdmImges,
      isLive: true,
      githubUrl: null,
      appScreens: ImagesPath.jdmImgListScreens,
      carouselFullWidth: false,
      behanceLink: null,
    ),
    ProjectModel(
      projectId: 14,
      projectTitle: "Live Stream Simulator",
      playStoreUrl: "https://play.google.com/store/apps/details?id=nz.dev.slivestreamsimulator",
      projectDescription:
          "Live Stream Simulator is a feature-rich application designed to simulate live streaming experiences. With its powerful capabilities, users can:\n\n"
          "• Create virtual live streams with customizable settings\n"
          "• Manage simulated viewers and their interactions\n"
          "• Explore various monetization strategies, including virtual donations and subscriptions\n"
          "• Analyze stream analytics and viewer engagement metrics\n\n"
          "This app serves as an invaluable tool for content creators, streamers, and businesses looking to experiment with live streaming without the need for expensive equipment or setups.",
      techStacks: [
        "Cubit",
        "Firebase",
        "Amplitude SDK",
        "RevenueCat SDK",
      ],
      role: "Sole creator of the entire app",
      projectImageModel: lssImges,
      isLive: true,
      githubUrl: null,
      appScreens: ImagesPath.livstreamSimulatorListScreens,
      carouselFullWidth: false,
      behanceLink: null,
    ),

    ProjectModel(
      projectId: 15,
      projectTitle: "Quick QR Pro",
      playStoreUrl: "https://play.google.com/store/apps/details?id=com.nizarztn.quickqrpro",
      projectDescription:
          "Quick QR Pro: The ultimate QR code app with easy scanning and custom code creation. Featuring logo integration, this app offers personalized and branded code experiences for various needs.\n\n\n"
          "Key Features:\n\n"
          "   ♦ Easy Scanning: Quickly scan QR codes to access information.\n"
          "   ♦ Custom Code Creation: Generate your own QR codes with the option to add your logo.\n"
          "   ♦ Brand Integration: Perfect for businesses aiming to promote their brand or individuals wanting a personal touch.\n",
      techStacks: [
        "GetX",
        "SqLite",
        "Storage",
      ],
      role: "Sole creator of the entire app",
      projectImageModel: qqpImges,
      isLive: true,
      githubUrl: null,
      appScreens: ImagesPath.quickQRProImagesListScreens,
      carouselFullWidth: false,
      behanceLink: null,
    ),

    ProjectModel(
      projectId: 16,
      projectTitle: "Speedy Invoice",
      playStoreUrl: "https://play.google.com/store/apps/details?id=com.nizarztn.speedyInvoice",
      projectDescription:
          "Speedy Invoice: A streamlined mobile tool for swift bill and estimate creation. Ideal for small businesses and freelancers, offering efficient on-the-go billing management.\n\n\n"
          "Key Features:\n\n"
          "   ♦ Mobile Invoice Creation: Easily generate and send invoices from your phone.\n"
          "   ♦ Estimate Management: Provide estimates before billing, streamlining the payment process.\n"
          "   ♦ Efficient Billing Management: Manage all billing aspects on the go, ensuring timely payments.\n",
      techStacks: [
        "GetX",
        "SqLite",
        "Storage",
      ],
      role: "Sole creator of the entire app",
      projectImageModel: invoiceGeneratorImages,
      isLive: true,
      githubUrl: null,
      appScreens: ImagesPath.invoiceGeneratorImagesListScreens,
      carouselFullWidth: false,
      behanceLink: null,
    ),
    ProjectModel(
      projectId: 17,
      projectTitle: "Audio Libro",
      playStoreUrl: "https://play.google.com/store/apps/details?id=nz.dev.audiolibro.client",
      projectDescription:
          "Developed Audio Libro, a personalized audiobook platform using Flutter for an immersive listening experience. Leveraged Firebase for efficient data management and user authentication.\n\n\n"
          "Key Features:\n\n"
          "   ♦ Seamless Background Playback: Enjoy uninterrupted listening across your day.\n"
          "   ♦ Convenient Bookmarking: Save your spot and return to your favorite stories anytime.\n"
          "   ♦ User-Friendly Interface: Navigate through a vast library of audiobooks effortlessly.\n",
      techStacks: [
        "Firebase",
        "GetX",
        "Rive Animations",
        "Firebase Analyitics",
      ],
      role: "Sole developer for UI design and implementation",
      projectImageModel: audioLibroImages,
      isLive: true,
      githubUrl: null,
      appScreens: ImagesPath.audioLibroScreens,
      carouselFullWidth: false,
      behanceLink: null,
    ),
    ProjectModel(
      projectId: 18,
      projectTitle: "Sa3arli",
      playStoreUrl: "https://play.google.com/store/apps/details?id=nx.nizarztn.carimp",
      projectDescription:
          "Facilitating car imports to Algeria Our Flutter app provides quick and accurate cost estimates, incorporating customs tariffs. Download now for confidence in your import decisions.\n\n\n"
          "Key Features:\n\n"
          "   ♦ Cost Estimation: Get a quick and accurate estimate of importation costs.\n"
          "   ♦ Customs Tariffs: Incorporates the latest customs tariffs applied by Algerian customs.\n"
          "   ♦ Regular Updates: Stay informed with the latest information about tariffs.\n",
      techStacks: [
        "Flutter",
        "Bloc",
      ],
      role: "Sole creator of the entire app",
      projectImageModel: sa3arliImges,
      isLive: true,
      githubUrl: null,
      appScreens: ImagesPath.saImgListScreens,
      carouselFullWidth: false,
      behanceLink: null,
    ),
    ProjectModel(
      projectId: 19,
      projectTitle: "Tune Hub",
      playStoreUrl: "https://play.google.com/store/apps/details?id=nz.dev.tunehub",
      isLive: true,
      projectDescription:
          "Developed Tune Hub, a personalized ringtone app using Flutter for a smooth user experience. Leveraged Supabase for efficient storage management.\n\n\n"
          "Key Features:\n\n"
          "   ♦ Effortless exploration of ringtones.\n"
          "   ♦ Seamless previewing functionality.\n"
          "   ♦ Easy customization of device sounds.\n",
      techStacks: [
        "Flutter",
        "Supabase",
      ],
      role: "solo developer for UI design and implementation",
      githubUrl: null,
      appScreens: ImagesPath.tuneHubScreens,
      projectImageModel: tuneHubImages,
      carouselFullWidth: false,
      behanceLink: null,
    ),
    ProjectModel(
      projectId: 20,
      projectTitle: "Sneakers Shop",
      liveUrl: null,
      projectDescription:
          "Prototype app for a local peak sneakers store. Check out the code on GitHub for a glimpse into the development process.",
      techStacks: [
        "Flutter",
      ],
      role: "Sole developer for UI design and implementation",
      projectImageModel: peakStoreImages,
      isLive: false,
      githubUrl: "https://github.com/nizarzitouni/sneakerzi",
      appScreens: ImagesPath.peakStoreScreens,
      carouselFullWidth: false,
      behanceLink: null,
    ),
    // ProjectModel(
    //   projectId: '10',
    //   projectTitle: "Tiktok Clone",
    //   liveUrl: null,
    //   projectDescription:
    //       "Developed a TikTok Clone using Flutter, GetX, Firebase, and Firestore DB. This app replicates the key functionalities of TikTok, allowing users to create, upload, and interact with short videos. As the sole creator, I implemented features such as video playback, user interactions, and seamless video uploads. Explore the source code on GitHub to understand the inner workings of this Flutter project.\n\n\n"
    //       "Key Features:\n\n"
    //       "   ♦ Video Playback: Experience TikTok's video content in a mobile-friendly format.\n"
    //       "   ♦ User Interactions: Engage with the community through likes, comments, and shares.\n"
    //       "   ♦ Seamless Video Uploads: Easily share your moments with the world.\n",
    //   techStacks: [
    //     "Flutter",
    //     "GetX",
    //     "Firebase",
    //     "Firestore DB",
    //   ],
    //   role: "Sole creator of the entire app",
    //   projectImageModel: tiktokCloneImges,
    //   isLive: false,
    //   githubUrl: "https://github.com/nizarzitouni/Tiktok-flutter-clone",
    //   appScreens: appScreensEmpty,
    //   carouselFullWidth: false,
    //   behanceLink: null,
    // ),
    // ProjectModel(
    //   projectId: '5',
    //   projectTitle: "NX Shop",
    //   liveUrl: null,
    //   projectDescription:
    //       "Developed a revolutionary E-commerce app with a dedicated admin companion. The client app ensures a seamless shopping experience, while the admin app empowers administrators with essential CRUD functionalities for efficient product management. Tech stack includes Flutter, Dio, GetX, SQLite, Shared Preferences, Firebase, and Firestore for dynamic data storage. As the sole creator, I led the development of both client and admin apps.",
    //   techStacks: [
    //     "Flutter",
    //     "GetX",
    //     "GetStorage",
    //     "SqlLite",
    //     "Shared Preferences",
    //     "Firebase",
    //     "Firestore",
    //   ],
    //   role: "Sole creator of both client and admin apps",
    //   projectImageModel: nxShopImges,
    //   isLive: false,
    //   githubUrl: "https://github.com/nizarzitouni/NX-Shop",
    //   appScreens: ImagesPath.nxShopistScreens,
    //   carouselFullWidth: false,
    //   behanceLink: null,
    // ),

    // ProjectModel(
    //   projectId: '6',
    //   projectTitle: "Food App UI",
    //   liveUrl: null,
    //   projectDescription:
    //       "Created a Flutter UI project for a visually appealing food app. Explore my GitHub repository to witness my skills in crafting intuitive and aesthetically pleasing user interfaces.",
    //   techStacks: [
    //     "Flutter",
    //   ],
    //   role: "Sole developer for UI design and implementation",
    //   projectImageModel: foodAppImages,
    //   isLive: false,
    //   githubUrl: "https://github.com/nizarzitouni/Food-Flutter-App-UI",
    //   appScreens: ImagesPath.foodAppScreens,
    //   carouselFullWidth: false,
    //   behanceLink: null,
    // ),
  ];

  static List<ProjectModel> threeDProjectList = [
    ProjectModel(
      projectId: 50,
      projectTitle: "Double Jump",
      liveUrl: "https://www.doublejump.wtf/",
      projectDescription:
          "As a Level Designer at Blank Labs Gaming Studio, I've played a pivotal role in bringing the creative visions of game designers to life. My primary responsibilities involve utilizing the powerful combination of Blender and Unity to craft immersive game scenes that resonate with the intended user experience.\n\n"
          "Key Contributions:\n\n"
          "♦ Creative Implementation: Translated game designer concepts into tangible game scenes, showcasing a diverse range of game types such as platformers, royal games, hybrid puzzles, and easy-to-play games.\n"
          "♦ Collaborative Development: Fostered effective communication with developers, leveraging my background in software engineering to ensure seamless collaboration within the team. Embraced Agile methodology for testing and refining early versions of game levels.\n"
          "♦ Project Management: Utilized Jira within an Agile framework for streamlined collaboration and organized project management. This involved tasks such as receiving final art from 3D artists and personally implementing it into the game scenes.\n"
          "♦ Visual Integration: Ensured a visually appealing and seamless integration of final art received from 3D artists into the game scenes, contributing to the overall aesthetic quality of the gaming experience.\n\n"
          "My journey at Blank Labs has been marked by a commitment to excellence, creativity, and effective teamwork. I take pride in contributing to the development of captivating games that engage and entertain users.\n",
      techStacks: [
        "Unity",
        "Blender 3D",
      ],
      role: "Level Designer in a team of 20",
      projectImageModel: djImges,
      isLive: true,
      githubUrl: null,
      appScreens: ImagesPath.doubleJumpScreens,
      carouselFullWidth: true,
      behanceLink: "https://www.behance.net/gallery/191290675/Double-Jump-Level-Design-Showcase",
    ),
    ProjectModel(
      projectId: 51,
      projectTitle: "PolyTown",
      isLive: true,
      liveUrl: "https://sketchfab.com/3d-models/polytown-low-poly-city-pack-699546b57f3e4b38986061e995ac20ad",
      projectDescription:
          "An Epic Low Poly asset pack of Buildings, Characters, Props, Viehcules and Environment assets to create a low poly themed polygonal style game",
      techStacks: [
        "Unity",
        "Blender",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: polyTownImges,
      appScreens: ImagesPath.polyTownScreens,
      githubUrl: null,
      carouselFullWidth: true,
      behanceLink: null,
    ),
    ProjectModel(
      projectId: 52,
      projectTitle: "Medieval Pack",
      isLive: true,
      liveUrl: "https://assetstore.unity.com/packages/3d/environments/historic/medieval-indoor-kit-3d-224308",
      projectDescription:
          "Introducing my latest creation: a comprehensive asset pack tailored for game developers seeking to infuse their projects with the allure of medieval interiors. With over 100 meticulously crafted assets including modular walls, floors, and props, this pack offers boundless opportunities for creating immersive game environments.\n",
      techStacks: [
        "Unity",
        "Blender",
        "Gimp",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: medievalImges,
      githubUrl: null,
      appScreens: ImagesPath.medievalPackScreens,
      carouselFullWidth: true,
      behanceLink: "https://www.behance.net/gallery/190658551/Level-Desing-Medieval-Indoor-Kit-3D",
    ),
    // ProjectModel(
    //   projectId: '53',
    //   projectTitle: "Blaster Pranks - Epic Toys",
    //   liveUrl: "https://apkcombo.com/blaster-pranks-epic-toys/com.blaster.prank.epic.toys.blast/",
    //   projectDescription:
    //       "As the Game Level Designer at Blaster Pranks - Epic Toys in 2018, I spearheaded the entire level design process, showcasing my proficiency in greyboxing, asset creation, and character design. My commitment to crafting engaging gaming experiences resulted in the successful creation and implementation of over 90 unique game levels.\n\n"
    //       "Key Achievements:\n\n"
    //       "♦ End-to-End Design Responsibility: Held complete responsibility for the level design process, from conceptualization through greyboxing to the final touches of asset creation and character design.\n"
    //       "♦ Quantifiable Impact: Contributed to the success of the project by creating and implementing a substantial number of 90+ game levels, each designed to captivate and challenge players.\n"
    //       "♦ Quantifiable Impact: Contributed to the success of the project by creating and implementing a substantial number of 90+ game levels, each designed to captivate and challenge players.\n\n"
    //       "My tenure at Blaster Pranks - Epic Toys was characterized by a commitment to delivering exceptional gaming content and a passion for pushing creative boundaries within the field of game design.\n",
    //   techStacks: [
    //     "Unity",
    //     "Blender",
    //   ],
    //   role: "I was the creator of the whole app",
    //   projectImageModel: blasterImges,
    //   isLive: true,
    //   githubUrl: null,
    //   appScreens: ImagesPath.blasterPranksScreens,
    //   carouselFullWidth: false,
    //   behanceLink: null,
    // ),
  ];
}

//MobileDevProjectList
final ProjectImageModel dupliImages = ProjectImageModel(
  projectIcon: 'assets/images/mob/dupli/dupli_icon.png',
  projectCover: 'assets/images/mob/dupli/dupli_cover.png',
);
final ProjectImageModel stretchyV1Images = ProjectImageModel(
  projectIcon: 'assets/images/mob/stretchyv1/stv1_icon.png',
  projectCover: 'assets/images/mob/stretchyv1/stv1_cover.png',
);
final ProjectImageModel stretchyV2Images = ProjectImageModel(
  projectIcon: 'assets/images/mob/stretchyv2/stv2_icon.png',
  projectCover: 'assets/images/mob/stretchyv2/stv2_cover.png',
);
final ProjectImageModel jdmImges = ProjectImageModel(
  projectIcon: 'assets/images/mob/jdm/jdm_icon.png',
  projectCover: 'assets/images/mob/jdm/jdm_cover.jpg',
);
final ProjectImageModel lssImges = ProjectImageModel(
  projectIcon: 'assets/images/mob/live_stream_simulator/lss_icon.png',
  projectCover: 'assets/images/mob/live_stream_simulator/lss_cover.png',
);
final ProjectImageModel qqpImges = ProjectImageModel(
  projectIcon: 'assets/images/mob/quick_qr_pro/qqp_icon.png',
  projectCover: 'assets/images/mob/quick_qr_pro/qqp_cover.png',
);
final ProjectImageModel invoiceGeneratorImages = ProjectImageModel(
  projectIcon: 'assets/images/mob/ig/ig_icon.png',
  projectCover: 'assets/images/mob/ig/ig_cover.png',
);
final ProjectImageModel sa3arliImges = ProjectImageModel(
  projectIcon: 'assets/images/mob/sa3arli/sa_icon.png',
  projectCover: 'assets/images/mob/sa3arli/sa_cover.png',
);
final ProjectImageModel tiktokCloneImges = ProjectImageModel(
  projectIcon: 'assets/images/mob/tiktok/tiktok_icon.png',
  projectCover: 'assets/images/mob/tiktok/tiktok_clone_cover.jpeg',
);
final ProjectImageModel nxShopImges = ProjectImageModel(
  projectIcon: 'assets/images/mob/nx_shop/nx_icon.png',
  projectCover: 'assets/images/mob/nx_shop/nx_cover.png',
);
final ProjectImageModel foodAppImages = ProjectImageModel(
  projectIcon: 'assets/images/mob/food_app/foodapp_icon.png',
  projectCover: 'assets/images/mob/food_app/foodapp_cover.png',
);
final ProjectImageModel tuneHubImages = ProjectImageModel(
  projectIcon: 'assets/images/mob/tune_hub/th_icon.png',
  projectCover: 'assets/images/mob/tune_hub/th_cover.png',
);
final ProjectImageModel peakStoreImages = ProjectImageModel(
  projectIcon: 'assets/images/mob/peak_store/ps_icon.png',
  projectCover: 'assets/images/mob/peak_store/ps_cover.png',
);
final ProjectImageModel audioLibroImages = ProjectImageModel(
  projectIcon: 'assets/images/mob/audio_libro/audio_libro_icon.png',
  projectCover: 'assets/images/mob/audio_libro/audio_libro_cover.png',
);

//threeDProjectList
// final ProjectImageModel oneImges = ProjectImageModel(
//   projectIcon: 'assets/images/game_design/double_jump/dj_icon.png',
//   projectCover: 'assets/images/game_design/double_jump/dj_cover.png',
// );

//gameDesignProjectList
final ProjectImageModel polyTownImges = ProjectImageModel(
  projectIcon: 'assets/images/game_design/poly_town/polyTown_icon.png',
  projectCover: 'assets/images/game_design/poly_town/polyTown_cover.png',
);
final ProjectImageModel medievalImges = ProjectImageModel(
  projectIcon: 'assets/images/game_design/medieval_pack/med_icon.png',
  projectCover: 'assets/images/game_design/medieval_pack/med_cover.png',
);
final ProjectImageModel blasterImges = ProjectImageModel(
  projectIcon: 'assets/images/game_design/blaster_pranks/blaster_icon.png',
  projectCover: 'assets/images/game_design/blaster_pranks/blaster_cover.png',
);
final ProjectImageModel djImges = ProjectImageModel(
  projectIcon: 'assets/images/game_design/double_jump/dj_icon.png',
  projectCover: 'assets/images/game_design/double_jump/dj_cover.png',
);
