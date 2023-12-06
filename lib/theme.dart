import 'dart:isolate' show Isolate;

Future<String> fsLocation([String path = '/']) async {
  final uri = Uri.parse('package:dartbook_theme_default$path');
  final pkgUri = await Isolate.resolvePackageUri(uri);
  return pkgUri?.toFilePath() ?? '';
}
