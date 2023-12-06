import 'dart:isolate' show Isolate;
import 'dart:io' show File;

Future<String> _resolvePackageLocation(String path) async {
  final uri = Uri.parse('package:dartbook_theme_default$path');
  final pkgUri = await Isolate.resolvePackageUri(uri);
  return pkgUri?.toFilePath() ?? '';
}

void main() async {
  final path = await _resolvePackageLocation('/');
  print(path);
}
