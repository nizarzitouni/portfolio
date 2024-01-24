class ProjectModel {
  final String name;
  final String url;
  final String desc;
  final String role;
  final List<String> techStacks;
  final List<String> images;

  const ProjectModel({
    required this.name,
    required this.url,
    required this.desc,
    required this.role,
    required this.techStacks,
    required this.images,
  });
}
