import 'project_keypoint.dart';

class ExperienceItem {
  const ExperienceItem({
    required this.companyName,
    required this.companyWebUrl,
    required this.position,
    required this.companyTimeSpan,
    required this.projectKeyPoints,
  });

  final String companyName;
  final String companyWebUrl;
  final String position;
  final String companyTimeSpan;
  final List<ProjectKeyPoint> projectKeyPoints;
}
