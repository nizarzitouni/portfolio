import 'project_image_model.dart';
import 'project_model.dart';

abstract class ProjectData {
  static List<ProjectModel> mobileDevProjectList = [
    ProjectModel(
      projectTitle: "Just Delete Me",
      projectUrl: "https://play.google.com/store/apps/details?id=com.nizarztn.justdeleteme",
      projectDescription:
          "\"JUST DELETE ME\" is a directory simplifying the account deletion process by countering dark pattern techniques used by companies.",
      techStacks: [
        "Flutter",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: jdmImges,
    ),
    ProjectModel(
      projectTitle: "Quick Qr Pro",
      projectUrl: "https://play.google.com/store/apps/details?id=com.nizarztn.quickqrpro",
      projectDescription:
          "Quick QR Pro: The ultimate QR code app with easy scanning and custom code creation, featuring logo integration for personalized and branded code experiences.",
      techStacks: [
        "Flutter",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: qqpImges,
    ),
    ProjectModel(
      projectTitle: "Speedy Invoice",
      projectUrl: "https://play.google.com/store/apps/details?id=com.nizarztn.speedyInvoice",
      projectDescription:
          "Speedy Invoice: Streamlined mobile tool for swift bill and estimate creation, ideal for small businesses and freelancers seeking efficient on-the-go billing management.",
      techStacks: [
        "Flutter",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: igImges,
    ),
    ProjectModel(
      projectTitle: "Sa3arli",
      projectUrl: "https://play.google.com/store/apps/details?id=nx.nizarztn.carimp",
      projectDescription:
          "Importing a car to Algeria? Our app provides quick and accurate cost estimates, factoring in customs tariffs. Download now for confidence in your import decisions!",
      techStacks: [
        "Flutter",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: saImges,
    ),
    ProjectModel(
      projectTitle: "Tiktok Clone",
      projectUrl: "https://github.com/nizarzitouni/Tiktok-flutter-clone",
      projectDescription: "In this app i created a tiktok clone with firebase as a database",
      techStacks: [
        "Flutter",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: tiktokCloneImges,
    ),
    ProjectModel(
      projectTitle: "NX Shop",
      projectUrl: "https://github.com/nizarzitouni/NX-Shop",
      projectDescription: "An Ecomerce app with an admin app also",
      techStacks: [
        "Flutter",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: nxShopImges,
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
  //     projectImageModel: polyTownImges,
  //   ),
  // ];

  static List<ProjectModel> threeDProjectList = [
    ProjectModel(
      projectTitle: "PolyTown",
      projectUrl: "https://sketchfab.com/3d-models/polytown-low-poly-city-pack-699546b57f3e4b38986061e995ac20ad",
      projectDescription:
          "An Epic Low Poly asset pack of Buildings, Characters, Props, Viehcules and Environment assets to create a low poly themed polygonal style game",
      techStacks: [
        "Blender",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: polyTownImges,
    ),
    ProjectModel(
      projectTitle: "Medieval Pack",
      projectUrl: "https://assetstore.unity.com/packages/3d/environments/historic/medieval-indoor-kit-3d-224308",
      projectDescription: "A package of modular architecture assets, props, and walls for creating medieval-themed interiors in your game.",
      techStacks: [
        "Blender",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: medievalImges,
    ),
    ProjectModel(
      projectTitle: "Blaster Pranks - Epic Toys",
      projectUrl: "https://apkcombo.com/blaster-pranks-epic-toys/com.blaster.prank.epic.toys.blast/",
      projectDescription: "I created all the levels of the game from greyboxing to the assets",
      techStacks: [
        "Blender",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: blasterImges,
    ),
    ProjectModel(
      projectTitle: "Double Jump",
      projectUrl: "https://www.doublejump.wtf/",
      projectDescription: "I worked as a level designer for Blank labs studio",
      techStacks: [
        "Blender",
      ],
      role: "I was the creator of the whole app",
      projectImageModel: djImges,
    ),
  ];
}

//MobileDevProjectList
final ProjectImageModel jdmImges = ProjectImageModel(
  projectIcon: 'assets/images/jdm_icon.png',
  projectCover: 'assets/images/jdm_cover.jpg',
);
final ProjectImageModel qqpImges = ProjectImageModel(
  projectIcon: 'assets/images/qqp_icon.png',
  projectCover: 'assets/images/qqp_cover.png',
);
final ProjectImageModel igImges = ProjectImageModel(
  projectIcon: 'assets/images/ig_icon.png',
  projectCover: 'assets/images/ig_cover.png',
);
final ProjectImageModel saImges = ProjectImageModel(
  projectIcon: 'assets/images/sa_icon.png',
  projectCover: 'assets/images/sa_cover.png',
);
final ProjectImageModel tiktokCloneImges = ProjectImageModel(
  projectIcon: 'assets/images/tiktok_icon.png',
  projectCover: 'assets/images/tiktok_clone_cover.jpeg',
);
final ProjectImageModel nxShopImges = ProjectImageModel(
  projectIcon: 'assets/images/nx_shop_icon.png',
  projectCover: 'assets/images/place_holder_img.jpg',
);

//threeDProjectList
final ProjectImageModel oneImges = ProjectImageModel(
  projectIcon: 'assets/images/dj_icon.png',
  projectCover: 'assets/images/dj_cover.png',
);

//gameDesignProjectList
final ProjectImageModel polyTownImges = ProjectImageModel(
  projectIcon: 'assets/images/polyTown_icon.png',
  projectCover: 'assets/images/polyTown_cover.png',
);
final ProjectImageModel medievalImges = ProjectImageModel(
  projectIcon: 'assets/images/med_icon.png',
  projectCover: 'assets/images/med_cover.png',
);
final ProjectImageModel blasterImges = ProjectImageModel(
  projectIcon: 'assets/images/blaster_icon.png',
  projectCover: 'assets/images/blaster_cover.png',
);
final ProjectImageModel djImges = ProjectImageModel(
  projectIcon: 'assets/images/dj_icon.png',
  projectCover: 'assets/images/dj_cover.png',
);
