A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

Features as below:

* Materail Desgin

![](https://raw.githubusercontent.com/lindeer/dartbook/main/doc/demo_entry.jpg)

![](https://raw.githubusercontent.com/lindeer/dartbook/main/doc/dartbook-looking.gif)

* Tooltip Glossary

![](https://raw.githubusercontent.com/lindeer/dartbook/main/doc/dartbook-tooltip.png)

* Mobile Friendly

![](https://raw.githubusercontent.com/lindeer/dartbook/main/doc/dartbook-mobile.gif)

The package most consists of web assets, but also a little dart code that return the root path in file system. `dartbook` need the root path so that could find the correct assets, e.g. style.css, fonts.

## run in command line

```bash
dart pub global activate dartbook_theme_default
dir=$(dartbook-theme --location)
dartbook build ./book-src ./book-static --theme $dir
```

Of course, `dartbook_theme_default` could be replaced by `dartbook_theme_xxx`, which would be developed by yourself!

## added as a dependency
```bash
dart pub add dartbook_theme_default
```
and in your code:
```dart
import 'package:dartbook_theme_default/dartbook_theme_default.dart' as t;

final assetRoot = await t.fsLocation();
applyTheme(assetRoot);
```
