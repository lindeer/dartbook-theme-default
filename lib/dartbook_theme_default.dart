import 'dart:isolate' show Isolate;

/// Return the file system location of current package.
/// [path] would be the absolute path of within `lib` directory of this package.
Future<String> fsLocation([String path = '/']) async {
  final uri = Uri.parse('package:dartbook_theme_default$path');
  final pkgUri = await Isolate.resolvePackageUri(uri);
  return pkgUri?.toFilePath() ?? '';
}
