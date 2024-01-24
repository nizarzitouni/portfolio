class ProjectKeyPoint {
  const ProjectKeyPoint(
      {required this.projectName, this.projectUrl, required this.keyPoints});

  final String projectName;
  final String? projectUrl;
  final List<String> keyPoints;
}
