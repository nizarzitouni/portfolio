import 'project_image_model.dart';
import 'project_model.dart';

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

final List<ProjectModel> projectModelsList = [
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
];
