// ignore_for_file: unused_element

import 'package:typeset/typeset.dart';
import 'package:url_launcher/url_launcher.dart';

enum CustomUrl {
  discord(""),
  terms(""),
  privacy(""),
  feedback("");

  final String url;
  final bool internal;
  const CustomUrl(this.url, {this.internal = false});
  Uri get uri => Uri.parse(url);

  @override
  String toString() => url;

  Future<void> launch() =>
      internal ? launchUrl(uri, mode: LaunchMode.inAppBrowserView) : launchUrl(uri, mode: LaunchMode.externalApplication);
}

final inTaypes = TypeSet(
  "By singing in you agree to our \n§Terms|${CustomUrl.terms}§"
  " and §Privacy Policy|${CustomUrl.privacy}§",
);

fn() {
  CustomUrl.discord.launch();
}
