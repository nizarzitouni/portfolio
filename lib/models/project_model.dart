class ProjectModel {
  final String titles;
  final String url;
  final String description;
  final String role;
  final List<String> techStacks;
  final List<String> images;

  const ProjectModel({
    required this.titles,
    required this.url,
    required this.description,
    required this.role,
    required this.techStacks,
    required this.images,
  });
}
