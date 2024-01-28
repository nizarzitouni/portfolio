import 'project_image_model.dart';

class ProjectModel {
  final String projectTitle;
  String? liveUrl;
  final bool isLive;
  final String projectDescription;
  final String role;
  final List<String> techStacks;
  // final List<String>? appScreens;
  final ProjectImageModel projectImageModel;
  String? githubUrl;

  ProjectModel({
    required this.projectTitle,
    required this.liveUrl,
    required this.isLive,
    required this.projectDescription,
    required this.role,
    required this.techStacks,
    required this.projectImageModel,
    required this.githubUrl,
  });
}
