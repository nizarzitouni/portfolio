import '../core/constants.dart';
import 'project_image_model.dart';

class ProjectModel {
  final String projectId;
  final String projectTitle;
  final bool isLive;
  String? liveUrl;
  final String projectDescription;
  final String role;
  final List<String> techStacks;
  final ProjectImageModel projectImageModel;
  final List<String>? appScreens;
  final bool carouselFullWidth;
  String? githubUrl;
  String? behanceLink;

  ProjectModel({
    required this.projectId,
    required this.projectTitle,
    required this.isLive,
    required this.liveUrl,
    required this.projectDescription,
    required this.role,
    required this.techStacks,
    required this.projectImageModel,
    required this.carouselFullWidth,
    required this.githubUrl,
    required this.appScreens,
    required this.behanceLink,
  });
}

final List<String> appScreensEmpty = [AssetsConstants.placeHolderImage];
