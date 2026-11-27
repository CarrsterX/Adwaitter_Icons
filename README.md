# Adwaitter_Icons

Official **GNOME Adwaita Symbolic & Full-Color Icons** for Flutter with zero external dependencies, compatible with `adwaitter`, `libadwaitter`, Material, and Cupertino across Linux, Android, iOS, macOS, Windows, and Web/WASM.

## Features

- **645 Symbolic Icons (`AdwIcons`)**: Monochrome vector glyphs packaged as standard Flutter `IconData` constants (`AdwaitaIcons.ttf`), fully compatible with Flutter icon font tree-shaking.
- **71 Full-Color Icons (`AdwFullColorIcons` + `AdwFullColorIcon`)**: Pre-rendered 128×128 PNG assets covering XDG `devices`, `mimetypes`, `places`, and `status` categories with zero SVG runtime dependencies.
- **Dynamic XDG Lookup**: Resolve full-color icons by standard XDG icon name via `AdwFullColorIcons.byName('text-x-generic')`.

## Installation

```yaml
dependencies:
  adwaitter_icons: ^1.0.0-alpha.10
```

## Usage

### Symbolic Icons

```dart
import 'package:adwaitter_icons/adwaitter_icons.dart';
import 'package:flutter/widgets.dart';

const icon = Icon(
  AdwIcons.folder_symbolic,
  size: 24,
);
```

### Full-Color Icons

```dart
import 'package:adwaitter_icons/adwaitter_icons.dart';
import 'package:flutter/widgets.dart';

const folder = AdwFullColorIcon(
  AdwFullColorIcons.folder,
  size: 48,
);

// Dynamic lookup by XDG icon name
final mimeIcon = AdwFullColorIcons.byName('text-x-generic');
```
