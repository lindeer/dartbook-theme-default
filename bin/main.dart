import 'package:dartbook_theme_default/theme.dart' as t;

const _usage = '''The theme resource package for dartbook.

Usage: dartbook-theme [arguments]

-h, --help            Print this usage information.
-l, --location        Print the file system location of current package.
''';

Future<void> main(List<String> args) async {
  var location = false;
  final it = args.iterator;
  while (it.moveNext()) {
    switch (it.current) {
      case '-l':
      case '--location':
        location = true;
        break;
      default:
        print(_usage);
    }
  }

  if (location) {
    final path = await t.fsLocation();
    print(path);
  }
}
