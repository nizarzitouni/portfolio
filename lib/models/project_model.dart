import 'project_image_model.dart';

class ProjectModel {
  final String projectTitle;
  final String projectUrl;
  final String projectDescription;
  final String role;
  final List<String> techStacks;
  // final List<String>? appScreens;
  final ProjectImageModel projectImageModel;

  const ProjectModel(
      // this.appScreens,
      {
    required this.projectTitle,
    required this.projectUrl,
    required this.projectDescription,
    required this.role,
    required this.techStacks,
    required this.projectImageModel,
  });
}
