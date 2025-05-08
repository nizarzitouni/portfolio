import '../core/constants.dart';
import 'project_image_model.dart';

class ProjectModel {
  final int projectId;
  final String projectTitle;
  final bool isLive;
  String? liveUrl;
  String? playStoreUrl;
  String? appStoreUrl;
  String? githubUrl;
  String? behanceLink;
  final String projectDescription;
  final String role;
  final List<String> techStacks;
  final ProjectImageModel projectImageModel;
  final List<String>? appScreens;
  final bool carouselFullWidth;

  ProjectModel({
    required this.projectId,
    required this.projectTitle,
    required this.isLive,
    this.liveUrl,
    this.playStoreUrl,
    this.appStoreUrl,
    this.githubUrl,
    this.behanceLink,
    required this.projectDescription,
    required this.role,
    required this.techStacks,
    required this.projectImageModel,
    required this.appScreens,
    required this.carouselFullWidth,
  });
}

final List<String> appScreensEmpty = [AssetsConstants.placeHolderImage];
