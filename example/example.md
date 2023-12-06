
## run in command line

```bash
dart pub global activate dartbook_theme_default
dir=$(dartbook-theme --location)
dartbook build book-src book-static --theme $dir
```

Of course, `dartbook_theme_default` could be replaced by `dartbook_theme_xxx`, which is developed by yourself!

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
