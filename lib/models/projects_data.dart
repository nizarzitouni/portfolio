import '../core/image_paths.dart';
import 'project_image_model.dart';
import 'project_model.dart';

abstract class ProjectData {
  static List<ProjectModel> mobileDevProjectList = [
    ProjectModel(
      projectId: '0',
      projectTitle: "Just Delete Me",
      liveUrl: "https://play.google.com/store/apps/details?id=com.nizarztn.justdeleteme",
      projectDescription:
          "\"JUST DELETE ME\" is a directory simplifying the account deletion process by countering dark pattern techniques used by companies. With over 10k downloads on the store, this Flutter app has successfully provided users with a straightforward solution for managing their online presence.",
      techStacks: [
        "Flutter",
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
      projectId: '1',
      projectTitle: "Quick QR Pro",
      liveUrl: "https://play.google.com/store/apps/details?id=com.nizarztn.quickqrpro",
      projectDescription:
          "Quick QR Pro: The ultimate QR code app with easy scanning and custom code creation. Featuring logo integration, this app offers personalized and branded code experiences for various needs.",
      techStacks: [
        "Flutter",
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
      projectId: '2',
      projectTitle: "Speedy Invoice",
      liveUrl: "https://play.google.com/store/apps/details?id=com.nizarztn.speedyInvoice",
      projectDescription:
          "Speedy Invoice: A streamlined mobile tool for swift bill and estimate creation. Ideal for small businesses and freelancers, offering efficient on-the-go billing management.",
      techStacks: [
        "Flutter",
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
      projectId: '3',
      projectTitle: "Sa3arli",
      liveUrl: "https://play.google.com/store/apps/details?id=nx.nizarztn.carimp",
      projectDescription:
          "Facilitating car imports to Algeria! Our Flutter app provides quick and accurate cost estimates, incorporating customs tariffs. Download now for confidence in your import decisions.",
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
      projectId: '4',
      projectTitle: "Tiktok Clone",
      liveUrl: null,
      projectDescription:
          "Developed a TikTok Clone using Flutter, GetX, Firebase, and Firestore DB. This app replicates the key functionalities of TikTok, allowing users to create, upload, and interact with short videos. As the sole creator, I implemented features such as video playback, user interactions, and seamless video uploads. Explore the source code on GitHub to understand the inner workings of this Flutter project.",
      techStacks: [
        "Flutter",
        "GetX",
        "Firebase",
        "Firestore DB",
      ],
      role: "Sole creator of the entire app",
      projectImageModel: tiktokCloneImges,
      isLive: false,
      githubUrl: "https://github.com/nizarzitouni/Tiktok-flutter-clone",
      appScreens: appScreensEmpty,
      carouselFullWidth: false,
      behanceLink: null,
    ),
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
    ProjectModel(
      projectId: '6',
      projectTitle: "Tune Hub",
      liveUrl: "https://play.google.com/store/apps/details?id=nz.dev.tunehub",
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
    ProjectModel(
      projectId: '7',
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
  ];

  // static List<ProjectModel> threeDProjectList = [
  //   ProjectModel(
  //     projectTitle: "PolyTown",
  //     projectUrl: "https://sketchfab.com/3d-models/polytown-low-poly-city-pack-699546b57f3e4b38986061e995ac20ad",
  //     projectDescription:
  //         "An Epic Low Poly asset pack of Buildings, Characters, Props, Viehcules and Environment assets to create a low poly themed polygonal style game",
  //     techStacks: [
  //       "Blender",
  //     ],
  //     role: "I was the creator of the whole app",
  //     projectImageModel: polyTownImges,      behanceLink:null,

  //   ),
  // ];

  static List<ProjectModel> threeDProjectList = [
    ProjectModel(
      projectId: '50',
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
      projectId: '51',
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
      projectId: '52',
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
    ProjectModel(
      projectId: '53',
      projectTitle: "Blaster Pranks - Epic Toys",
      liveUrl: "https://apkcombo.com/blaster-pranks-epic-toys/com.blaster.prank.epic.toys.blast/",
      projectDescription:
          "As the Game Level Designer at Blaster Pranks - Epic Toys in 2018, I spearheaded the entire level design process, showcasing my proficiency in greyboxing, asset creation, and character design. My commitment to crafting engaging gaming experiences resulted in the successful creation and implementation of over 90 unique game levels.\n\n"
          "Key Achievements:\n\n"
          "♦ End-to-End Design Responsibility: Held complete responsibility for the level design process, from conceptualization through greyboxing to the final touches of asset creation and character design.\n"
          "♦ Quantifiable Impact: Contributed to the success of the project by creating and implementing a substantial number of 90+ game levels, each designed to captivate and challenge players.\n"
          "♦ Quantifiable Impact: Contributed to the success of the project by creating and implementing a substantial number of 90+ game levels, each designed to captivate and challenge players.\n\n"
          "My tenure at Blaster Pranks - Epic Toys was characterized by a commitment to delivering exceptional gaming content and a passion for pushing creative boundaries within the field of game design.\n",
      techStacks: [
        "Unity",
        "Blender",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: blasterImges,
      isLive: true,
      githubUrl: null,
      appScreens: ImagesPath.blasterPranksScreens,
      carouselFullWidth: false,
      behanceLink: null,
    ),
  ];
}

//MobileDevProjectList
final ProjectImageModel jdmImges = ProjectImageModel(
  projectIcon: 'assets/images/mob/jdm/jdm_icon.png',
  projectCover: 'assets/images/mob/jdm/jdm_cover.jpg',
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
  projectCover: 'assets/images/mob/tune_hub/th_icon.png',
);
final ProjectImageModel peakStoreImages = ProjectImageModel(
  projectIcon: 'assets/images/mob/peak_store/ps_icon.png',
  projectCover: 'assets/images/mob/peak_store/ps_cover.png',
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
