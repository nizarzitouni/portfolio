import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/pallete.dart';
import 'model/legal_document.dart';

class LegalDocumentPage extends StatefulWidget {
  final LegalDocument document;

  const LegalDocumentPage({
    super.key,
    required this.document,
  });

  @override
  State<LegalDocumentPage> createState() => _LegalDocumentPageState();
}

class _LegalDocumentPageState extends State<LegalDocumentPage> {
  String _markdownContent = '';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadMarkdownFile();
  }

  /// Load the markdown file from assets
  Future<void> _loadMarkdownFile() async {
    try {
      final content = await rootBundle.loadString(widget.document.assetPath);
      setState(() {
        _markdownContent = content;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _markdownContent = 'Error loading document: $e';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get screen width to calculate responsive margins
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculate container width based on screen size
    // For large screens, we'll limit the width to make it easier to read
    // For small screens, we'll use a percentage of the screen width
    double contentWidth = screenWidth;
    double horizontalPadding = 16.0;

    if (screenWidth > 600) {
      // Tablet and larger: fixed horizontal padding
      horizontalPadding = 40.0;

      if (screenWidth > 1200) {
        // Desktop: limit content width for readability
        contentWidth = 800;
      } else {
        // Tablet: use a percentage of screen width
        contentWidth = screenWidth * 0.8;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.document.title),
        backgroundColor: Pallete.blackColor,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        color: Pallete.blackColor,
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : Center(
                // Center the content horizontally
                child: Container(
                  width: contentWidth,
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Column(
                    children: [
                      // Markdown content in a scrollable area
                      Expanded(
                        child: Markdown(
                          data: _markdownContent,
                          styleSheet: MarkdownStyleSheet(
                            h1: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            h2: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            p: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            a: const TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            listBullet: const TextStyle(color: Colors.white),
                            blockquote: const TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            ),
                            code: const TextStyle(
                              backgroundColor: Colors.black54,
                              color: Colors.white,
                              fontFamily: 'monospace',
                            ),
                            codeblockDecoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            blockSpacing: 16,
                            listIndent: 24,
                            tableHead: const TextStyle(fontWeight: FontWeight.bold),
                            tableBody: const TextStyle(color: Colors.white),
                            tableBorder: TableBorder.all(color: Colors.grey.shade700, width: 0.5),
                          ),
                          onTapLink: (text, href, title) {
                            if (href != null) {
                              launchUrl(
                                Uri.parse(href),
                                mode: LaunchMode.externalApplication,
                              );
                            }
                          },
                          selectable: true,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                      // Footer with last updated date and copyright
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              'Last updated: ${DateFormat('MMMM d, yyyy').format(widget.document.lastUpdated)}',
                              style: const TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '© ${DateTime.now().year} nz-dev. All rights reserved.',
                              style: const TextStyle(color: Colors.grey, fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
