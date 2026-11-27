## 1.0.0-alpha.11

* Added full `dartdoc` documentation with paginated categories (`Symbolic Icons`, `Full-Color Icons`) and topic pages (`doc/symbolic_icons.md`, `doc/fullcolor_icons.md`), passing `dart doc --validate-links` with 0 warnings and 0 errors.
* Documented all 71 `AdwFullColorIcons` constants, `AdwFullColorIconData` (with value equality `==`/`hashCode`/`toString`), and `AdwFullColorIcon`.
* Removed legacy duplicate barrel `lib/libadwaitter_icons.dart` and updated `tool/generate.js` and `README.md`.

## 1.0.0-alpha.10

* Aligned version with `adwaitter` and `libadwaitter` (`1.0.0-alpha.10`).

## 1.0.0-alpha.9

* Added 71 official GNOME Adwaita full-color icons (`AdwFullColorIcons` + `AdwFullColorIcon` widget) pre-rendered as 128×128 PNG assets with zero external dependencies and full Web/WASM compatibility.
* Added widget tests for `AdwIcons` and `AdwFullColorIcon`.

## 1.0.0-alpha.8

* Added minimal package example (`example/lib/main.dart`) and aligned version with `adwaitter` and `libadwaitter`.
* Verified full Web and WebAssembly (WASM) compatibility with icon font tree-shaking.

## 1.0.0-alpha.7

* Aligned version with `adwaitter` and `libadwaitter` (`1.0.0-alpha.7`).
* Verified full Web and WebAssembly (WASM) compatibility with icon font tree-shaking.

## 0.1.0-dev.1

* Initial development release of `adwaitter_icons` with GNOME Adwaita symbolic icon font (`AdwaitaIcons.ttf`) and Dart icon constants.
