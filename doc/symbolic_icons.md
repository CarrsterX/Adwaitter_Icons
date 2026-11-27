# Symbolic Icons

GNOME Adwaita symbolic icons are monochrome vector glyphs packaged in the
`AdwaitaIcons` TrueType font and exposed as `static const IconData` entries on
`AdwIcons`.

Because they are standard Flutter `IconData` constants, symbolic icons work
anywhere Flutter accepts an icon — including `Icon`, `AdwButton`, `AdwActionRow`,
`AdwHeaderBar`, Material, and Cupertino widgets — and support Flutter's icon
font tree-shaking on Android, iOS, Linux, macOS, Windows, and Web/WASM.

## Usage

```dart
import 'package:adwaitter_icons/adwaitter_icons.dart';
import 'package:flutter/widgets.dart';

const icon = Icon(
  AdwIcons.folder_symbolic,
  size: 24,
);
```

## Naming Convention

Identifiers mirror the official
[GNOME Adwaita Icon Theme](https://gitlab.gnome.org/GNOME/adwaita-icon-theme)
XDG icon names with hyphens replaced by underscores (for example,
`document-save-symbolic` becomes `AdwIcons.document_save_symbolic`).
Right-to-left variants retain their `_rtl` suffix from upstream GNOME assets.
