# Full-Color Icons

GNOME Adwaita full-color icons are pre-rendered 128×128 PNG assets covering
standard XDG `devices`, `mimetypes`, `places`, and `status` categories.

They are exposed through `AdwFullColorIcons` (71 `AdwFullColorIconData`
descriptors plus `byName` lookup) and rendered using the `AdwFullColorIcon`
widget via Flutter's built-in `Image.asset` — requiring zero external SVG
dependencies and working seamlessly on Linux, Android, iOS, macOS, Windows, and
Web/WASM.

## Usage

```dart
import 'package:adwaitter_icons/adwaitter_icons.dart';
import 'package:flutter/widgets.dart';

const folderIcon = AdwFullColorIcon(
  AdwFullColorIcons.folder,
  size: 48,
);
```

## Dynamic Lookup by XDG Name

When resolving icon names dynamically (such as MIME types or desktop entries),
use `AdwFullColorIcons.byName`:

```dart
final iconData = AdwFullColorIcons.byName('text-x-generic') ??
    AdwFullColorIcons.application_x_generic;

final widget = AdwFullColorIcon(iconData, size: 64);
```
