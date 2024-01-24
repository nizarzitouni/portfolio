import '../core/image_paths.dart';
import 'project_model.dart';

final List<ProjectModel> projectModelsList = [
  ProjectModel(
    name: "Just Delete Me",
    url: "https://play.google.com/store/apps/details?id=com.nizarztn.justdeleteme",
    desc:
        "Many companies use dark pattern techniques to make it difficult to find how to delete your account. “JUST DELETE ME” aims to be a directory of URLs to enable you to easily delete your account from web services.",
    techStacks: [
      "Flutter",
      "MVC",
      "GetX State Managment",
    ],
    role: "I was the creator of the whole app",
    images: ImagesPath.jdmImgList,
  ),
];
