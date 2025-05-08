import 'legal_document.dart';

class LegalContent {
  // Document objects that point to the .md files in assets
  static final LegalDocument privacyPolicy = LegalDocument(
    title: 'Privacy Policy',
    assetPath: 'assets/mark_down/privacy-policy-markdown.md',
    lastUpdated: DateTime(2025, 5, 8),
  );

  static final LegalDocument termsAndConditions = LegalDocument(
    title: 'Terms and Conditions',
    assetPath: 'assets/mark_down/terms-and-conditions-markdown.md',
    lastUpdated: DateTime(2025, 5, 8),
  );
}
