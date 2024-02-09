import '../core/constants.dart';
import 'project_image_model.dart';

class ProjectModel {
  final String projectId;
  final String projectTitle;
  final bool isLive;
  final String projectDescription;
  final String role;
  final List<String> techStacks;
  final ProjectImageModel projectImageModel;
  final List<String>? appScreens;
  String? liveUrl;
  String? githubUrl;

  ProjectModel({
    required this.projectId,
    required this.projectTitle,
    required this.liveUrl,
    required this.isLive,
    required this.projectDescription,
    required this.role,
    required this.techStacks,
    required this.projectImageModel,
    required this.githubUrl,
    required this.appScreens,
  });
}

final List<String> appScreensEmpty = [AssetsConstants.placeHolderImage];
