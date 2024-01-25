import 'package:url_launcher/url_launcher.dart';

/// Capitalizes the first letter of each word in the given [text] and returns the modified string.
String capitalizeFirstLetterOfEachWord(String text) {
  // Split the text into a list of words using space as the delimiter
  List<String> words = text.split(' ');

  // Create an empty list to store modified words
  List<String> capitalizedWords = [];

  // Iterate through each word in the list
  for (String word in words) {
    // Check if the word is not empty
    if (word.isNotEmpty) {
      // Capitalize the first letter of the word and convert the rest to lowercase
      String capitalizedWord = word[0].toUpperCase() + word.substring(1).toLowerCase();
      // Add the modified word to the list
      capitalizedWords.add(capitalizedWord);
    }
  }

  // Join the modified words back into a single string
  String result = capitalizedWords.join(' ');
  return result;
}

Future<void> launchWithUri({required String url}) async {
  if (!await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
}
