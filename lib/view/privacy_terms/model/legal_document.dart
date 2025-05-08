class LegalDocument {
  final String title;
  final String assetPath; // Path to the .md file in assets
  final DateTime lastUpdated;

  const LegalDocument({
    required this.title,
    required this.assetPath,
    required this.lastUpdated,
  });
}
