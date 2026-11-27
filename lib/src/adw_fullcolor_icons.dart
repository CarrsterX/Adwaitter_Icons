// GENERATED CODE - DO NOT MODIFY BY HAND.
// Official GNOME Adwaita full-color icons (zero external dependencies).

import 'package:flutter/widgets.dart';

/// Descriptor for a full-color GNOME Adwaita icon.
///
/// Instances are exposed as compile-time constants on [AdwFullColorIcons] and
/// rendered with [AdwFullColorIcon].
///
/// See also:
///
/// * [AdwFullColorIcons], the catalog of bundled full-color icons.
/// * [AdwFullColorIcon], the widget that displays an [AdwFullColorIconData].
///
/// {@category Full-Color Icons}
@immutable
class AdwFullColorIconData {
  /// XDG icon name (e.g. `'folder'`, `'text-x-generic'`).
  final String name;

  /// Category directory (`'devices'`, `'mimetypes'`, `'places'`, `'status'`).
  final String category;

  /// Package-relative asset path inside `adwaitter_icons`.
  final String assetPath;

  /// Creates an immutable descriptor for a full-color Adwaita icon asset.
  const AdwFullColorIconData({
    required this.name,
    required this.category,
    required this.assetPath,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdwFullColorIconData &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          category == other.category &&
          assetPath == other.assetPath;

  @override
  int get hashCode => Object.hash(name, category, assetPath);

  @override
  String toString() =>
      'AdwFullColorIconData(name: $name, category: $category, assetPath: $assetPath)';
}

/// Renders an [AdwFullColorIconData] full-color GNOME Adwaita icon using
/// Flutter's built-in [Image.asset] with zero external dependencies.
///
/// All bundled icons are pre-rendered 128×128 PNG assets and work identically
/// across Linux, Android, iOS, macOS, Windows, and Web/WASM.
///
/// ```dart
/// const AdwFullColorIcon(
///   AdwFullColorIcons.folder,
///   size: 48,
/// )
/// ```
///
/// See also:
///
/// * [AdwFullColorIcons], the catalog of available full-color icons.
/// * [AdwFullColorIconData], the metadata descriptor passed to [icon].
///
/// {@category Full-Color Icons}
class AdwFullColorIcon extends StatelessWidget {
  static const String _packageName = 'adwaitter_icons';

  /// The full-color icon descriptor to display.
  final AdwFullColorIconData icon;

  /// The logical width and height of the rendered icon. Defaults to `48.0`.
  final double size;

  /// How the icon image is inscribed into the [size] box.
  /// Defaults to [BoxFit.contain].
  final BoxFit fit;

  /// Optional semantic label for accessibility tools.
  ///
  /// When `null`, falls back to [AdwFullColorIconData.name].
  final String? semanticsLabel;

  /// Creates a widget that displays the given full-color Adwaita [icon].
  const AdwFullColorIcon(
    this.icon, {
    super.key,
    this.size = 48.0,
    this.fit = BoxFit.contain,
    this.semanticsLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon.assetPath,
      package: _packageName,
      width: size,
      height: size,
      fit: fit,
      filterQuality: FilterQuality.medium,
      semanticLabel: semanticsLabel ?? icon.name,
    );
  }
}

/// Catalog of 71 full-color GNOME Adwaita icons across the `devices`,
/// `mimetypes`, `places`, and `status` XDG categories.
///
/// Pass any constant to [AdwFullColorIcon] to render it, or resolve an icon
/// dynamically by XDG name with [byName].
///
/// ```dart
/// const AdwFullColorIcon(AdwFullColorIcons.text_x_generic, size: 64)
/// ```
///
/// See also:
///
/// * [AdwFullColorIcon], the widget that renders these icons.
/// * [AdwFullColorIconData], the descriptor type for each entry.
///
/// {@category Full-Color Icons}
class AdwFullColorIcons {
  AdwFullColorIcons._();

  /// Full-color `audio-headphones` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData audio_headphones = AdwFullColorIconData(
    name: 'audio-headphones',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/audio-headphones.png',
  );

  /// Full-color `audio-headset` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData audio_headset = AdwFullColorIconData(
    name: 'audio-headset',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/audio-headset.png',
  );

  /// Full-color `camera-web` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData camera_web = AdwFullColorIconData(
    name: 'camera-web',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/camera-web.png',
  );

  /// Full-color `computer` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData computer = AdwFullColorIconData(
    name: 'computer',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/computer.png',
  );

  /// Full-color `drive-harddisk` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData drive_harddisk = AdwFullColorIconData(
    name: 'drive-harddisk',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/drive-harddisk.png',
  );

  /// Full-color `drive-multidisk` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData drive_multidisk = AdwFullColorIconData(
    name: 'drive-multidisk',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/drive-multidisk.png',
  );

  /// Full-color `drive-optical` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData drive_optical = AdwFullColorIconData(
    name: 'drive-optical',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/drive-optical.png',
  );

  /// Full-color `drive-removable-media` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData drive_removable_media = AdwFullColorIconData(
    name: 'drive-removable-media',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/drive-removable-media.png',
  );

  /// Full-color `ebook-reader` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData ebook_reader = AdwFullColorIconData(
    name: 'ebook-reader',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/ebook-reader.png',
  );

  /// Full-color `input-gaming` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData input_gaming = AdwFullColorIconData(
    name: 'input-gaming',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/input-gaming.png',
  );

  /// Full-color `input-keyboard` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData input_keyboard = AdwFullColorIconData(
    name: 'input-keyboard',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/input-keyboard.png',
  );

  /// Full-color `input-mouse` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData input_mouse = AdwFullColorIconData(
    name: 'input-mouse',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/input-mouse.png',
  );

  /// Full-color `input-tablet` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData input_tablet = AdwFullColorIconData(
    name: 'input-tablet',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/input-tablet.png',
  );

  /// Full-color `media-flash` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData media_flash = AdwFullColorIconData(
    name: 'media-flash',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/media-flash.png',
  );

  /// Full-color `media-optical` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData media_optical = AdwFullColorIconData(
    name: 'media-optical',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/media-optical.png',
  );

  /// Full-color `media-removable` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData media_removable = AdwFullColorIconData(
    name: 'media-removable',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/media-removable.png',
  );

  /// Full-color `microphone` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData microphone = AdwFullColorIconData(
    name: 'microphone',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/microphone.png',
  );

  /// Full-color `phone` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData phone = AdwFullColorIconData(
    name: 'phone',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/phone.png',
  );

  /// Full-color `printer-network` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData printer_network = AdwFullColorIconData(
    name: 'printer-network',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/printer-network.png',
  );

  /// Full-color `printer` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData printer = AdwFullColorIconData(
    name: 'printer',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/printer.png',
  );

  /// Full-color `scanner` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData scanner = AdwFullColorIconData(
    name: 'scanner',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/scanner.png',
  );

  /// Full-color `video-display` icon (`devices` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData video_display = AdwFullColorIconData(
    name: 'video-display',
    category: 'devices',
    assetPath: 'assets/fullcolor/devices/video-display.png',
  );

  /// Full-color `application-certificate` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData application_certificate = AdwFullColorIconData(
    name: 'application-certificate',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/application-certificate.png',
  );

  /// Full-color `application-x-addon` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData application_x_addon = AdwFullColorIconData(
    name: 'application-x-addon',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/application-x-addon.png',
  );

  /// Full-color `application-x-executable` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData application_x_executable = AdwFullColorIconData(
    name: 'application-x-executable',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/application-x-executable.png',
  );

  /// Full-color `application-x-firmware` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData application_x_firmware = AdwFullColorIconData(
    name: 'application-x-firmware',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/application-x-firmware.png',
  );

  /// Full-color `application-x-generic` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData application_x_generic = AdwFullColorIconData(
    name: 'application-x-generic',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/application-x-generic.png',
  );

  /// Full-color `application-x-sharedlib` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData application_x_sharedlib = AdwFullColorIconData(
    name: 'application-x-sharedlib',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/application-x-sharedlib.png',
  );

  /// Full-color `audio-x-generic` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData audio_x_generic = AdwFullColorIconData(
    name: 'audio-x-generic',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/audio-x-generic.png',
  );

  /// Full-color `font-x-generic` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData font_x_generic = AdwFullColorIconData(
    name: 'font-x-generic',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/font-x-generic.png',
  );

  /// Full-color `image-x-generic` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData image_x_generic = AdwFullColorIconData(
    name: 'image-x-generic',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/image-x-generic.png',
  );

  /// Full-color `inode-directory` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData inode_directory = AdwFullColorIconData(
    name: 'inode-directory',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/inode-directory.png',
  );

  /// Full-color `inode-symlink` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData inode_symlink = AdwFullColorIconData(
    name: 'inode-symlink',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/inode-symlink.png',
  );

  /// Full-color `model` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData model = AdwFullColorIconData(
    name: 'model',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/model.png',
  );

  /// Full-color `package-x-generic` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData package_x_generic = AdwFullColorIconData(
    name: 'package-x-generic',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/package-x-generic.png',
  );

  /// Full-color `text-html` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData text_html = AdwFullColorIconData(
    name: 'text-html',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/text-html.png',
  );

  /// Full-color `text-x-generic` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData text_x_generic = AdwFullColorIconData(
    name: 'text-x-generic',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/text-x-generic.png',
  );

  /// Full-color `text-x-preview` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData text_x_preview = AdwFullColorIconData(
    name: 'text-x-preview',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/text-x-preview.png',
  );

  /// Full-color `text-x-script` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData text_x_script = AdwFullColorIconData(
    name: 'text-x-script',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/text-x-script.png',
  );

  /// Full-color `video-x-generic` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData video_x_generic = AdwFullColorIconData(
    name: 'video-x-generic',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/video-x-generic.png',
  );

  /// Full-color `x-office-addressbook` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData x_office_addressbook = AdwFullColorIconData(
    name: 'x-office-addressbook',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/x-office-addressbook.png',
  );

  /// Full-color `x-office-document-template` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData x_office_document_template = AdwFullColorIconData(
    name: 'x-office-document-template',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/x-office-document-template.png',
  );

  /// Full-color `x-office-document` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData x_office_document = AdwFullColorIconData(
    name: 'x-office-document',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/x-office-document.png',
  );

  /// Full-color `x-office-drawing` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData x_office_drawing = AdwFullColorIconData(
    name: 'x-office-drawing',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/x-office-drawing.png',
  );

  /// Full-color `x-office-presentation-template` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData x_office_presentation_template = AdwFullColorIconData(
    name: 'x-office-presentation-template',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/x-office-presentation-template.png',
  );

  /// Full-color `x-office-presentation` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData x_office_presentation = AdwFullColorIconData(
    name: 'x-office-presentation',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/x-office-presentation.png',
  );

  /// Full-color `x-office-spreadsheet-template` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData x_office_spreadsheet_template = AdwFullColorIconData(
    name: 'x-office-spreadsheet-template',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/x-office-spreadsheet-template.png',
  );

  /// Full-color `x-office-spreadsheet` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData x_office_spreadsheet = AdwFullColorIconData(
    name: 'x-office-spreadsheet',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/x-office-spreadsheet.png',
  );

  /// Full-color `x-package-repository` icon (`mimetypes` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData x_package_repository = AdwFullColorIconData(
    name: 'x-package-repository',
    category: 'mimetypes',
    assetPath: 'assets/fullcolor/mimetypes/x-package-repository.png',
  );

  /// Full-color `folder-documents` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder_documents = AdwFullColorIconData(
    name: 'folder-documents',
    category: 'places',
    assetPath: 'assets/fullcolor/places/folder-documents.png',
  );

  /// Full-color `folder-download` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder_download = AdwFullColorIconData(
    name: 'folder-download',
    category: 'places',
    assetPath: 'assets/fullcolor/places/folder-download.png',
  );

  /// Full-color `folder-drag-accept` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder_drag_accept = AdwFullColorIconData(
    name: 'folder-drag-accept',
    category: 'places',
    assetPath: 'assets/fullcolor/places/folder-drag-accept.png',
  );

  /// Full-color `folder-music` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder_music = AdwFullColorIconData(
    name: 'folder-music',
    category: 'places',
    assetPath: 'assets/fullcolor/places/folder-music.png',
  );

  /// Full-color `folder-pictures` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder_pictures = AdwFullColorIconData(
    name: 'folder-pictures',
    category: 'places',
    assetPath: 'assets/fullcolor/places/folder-pictures.png',
  );

  /// Full-color `folder-projects` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder_projects = AdwFullColorIconData(
    name: 'folder-projects',
    category: 'places',
    assetPath: 'assets/fullcolor/places/folder-projects.png',
  );

  /// Full-color `folder-publicshare` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder_publicshare = AdwFullColorIconData(
    name: 'folder-publicshare',
    category: 'places',
    assetPath: 'assets/fullcolor/places/folder-publicshare.png',
  );

  /// Full-color `folder-remote` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder_remote = AdwFullColorIconData(
    name: 'folder-remote',
    category: 'places',
    assetPath: 'assets/fullcolor/places/folder-remote.png',
  );

  /// Full-color `folder-templates` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder_templates = AdwFullColorIconData(
    name: 'folder-templates',
    category: 'places',
    assetPath: 'assets/fullcolor/places/folder-templates.png',
  );

  /// Full-color `folder-videos` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder_videos = AdwFullColorIconData(
    name: 'folder-videos',
    category: 'places',
    assetPath: 'assets/fullcolor/places/folder-videos.png',
  );

  /// Full-color `folder` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder = AdwFullColorIconData(
    name: 'folder',
    category: 'places',
    assetPath: 'assets/fullcolor/places/folder.png',
  );

  /// Full-color `network-server` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData network_server = AdwFullColorIconData(
    name: 'network-server',
    category: 'places',
    assetPath: 'assets/fullcolor/places/network-server.png',
  );

  /// Full-color `network-workgroup` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData network_workgroup = AdwFullColorIconData(
    name: 'network-workgroup',
    category: 'places',
    assetPath: 'assets/fullcolor/places/network-workgroup.png',
  );

  /// Full-color `user-bookmarks` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData user_bookmarks = AdwFullColorIconData(
    name: 'user-bookmarks',
    category: 'places',
    assetPath: 'assets/fullcolor/places/user-bookmarks.png',
  );

  /// Full-color `user-desktop` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData user_desktop = AdwFullColorIconData(
    name: 'user-desktop',
    category: 'places',
    assetPath: 'assets/fullcolor/places/user-desktop.png',
  );

  /// Full-color `user-home` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData user_home = AdwFullColorIconData(
    name: 'user-home',
    category: 'places',
    assetPath: 'assets/fullcolor/places/user-home.png',
  );

  /// Full-color `user-trash` icon (`places` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData user_trash = AdwFullColorIconData(
    name: 'user-trash',
    category: 'places',
    assetPath: 'assets/fullcolor/places/user-trash.png',
  );

  /// Full-color `avatar-default` icon (`status` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData avatar_default = AdwFullColorIconData(
    name: 'avatar-default',
    category: 'status',
    assetPath: 'assets/fullcolor/status/avatar-default.png',
  );

  /// Full-color `folder-open` icon (`status` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData folder_open = AdwFullColorIconData(
    name: 'folder-open',
    category: 'status',
    assetPath: 'assets/fullcolor/status/folder-open.png',
  );

  /// Full-color `image-loading` icon (`status` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData image_loading = AdwFullColorIconData(
    name: 'image-loading',
    category: 'status',
    assetPath: 'assets/fullcolor/status/image-loading.png',
  );

  /// Full-color `image-missing` icon (`status` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData image_missing = AdwFullColorIconData(
    name: 'image-missing',
    category: 'status',
    assetPath: 'assets/fullcolor/status/image-missing.png',
  );

  /// Full-color `user-trash-full` icon (`status` category).
  // ignore: constant_identifier_names
  static const AdwFullColorIconData user_trash_full = AdwFullColorIconData(
    name: 'user-trash-full',
    category: 'status',
    assetPath: 'assets/fullcolor/status/user-trash-full.png',
  );

  /// Lookup map of all full-color icons indexed by XDG icon name.
  static const Map<String, AdwFullColorIconData> all = <String, AdwFullColorIconData>{
    'audio-headphones': audio_headphones,
    'audio-headset': audio_headset,
    'camera-web': camera_web,
    'computer': computer,
    'drive-harddisk': drive_harddisk,
    'drive-multidisk': drive_multidisk,
    'drive-optical': drive_optical,
    'drive-removable-media': drive_removable_media,
    'ebook-reader': ebook_reader,
    'input-gaming': input_gaming,
    'input-keyboard': input_keyboard,
    'input-mouse': input_mouse,
    'input-tablet': input_tablet,
    'media-flash': media_flash,
    'media-optical': media_optical,
    'media-removable': media_removable,
    'microphone': microphone,
    'phone': phone,
    'printer-network': printer_network,
    'printer': printer,
    'scanner': scanner,
    'video-display': video_display,
    'application-certificate': application_certificate,
    'application-x-addon': application_x_addon,
    'application-x-executable': application_x_executable,
    'application-x-firmware': application_x_firmware,
    'application-x-generic': application_x_generic,
    'application-x-sharedlib': application_x_sharedlib,
    'audio-x-generic': audio_x_generic,
    'font-x-generic': font_x_generic,
    'image-x-generic': image_x_generic,
    'inode-directory': inode_directory,
    'inode-symlink': inode_symlink,
    'model': model,
    'package-x-generic': package_x_generic,
    'text-html': text_html,
    'text-x-generic': text_x_generic,
    'text-x-preview': text_x_preview,
    'text-x-script': text_x_script,
    'video-x-generic': video_x_generic,
    'x-office-addressbook': x_office_addressbook,
    'x-office-document-template': x_office_document_template,
    'x-office-document': x_office_document,
    'x-office-drawing': x_office_drawing,
    'x-office-presentation-template': x_office_presentation_template,
    'x-office-presentation': x_office_presentation,
    'x-office-spreadsheet-template': x_office_spreadsheet_template,
    'x-office-spreadsheet': x_office_spreadsheet,
    'x-package-repository': x_package_repository,
    'folder-documents': folder_documents,
    'folder-download': folder_download,
    'folder-drag-accept': folder_drag_accept,
    'folder-music': folder_music,
    'folder-pictures': folder_pictures,
    'folder-projects': folder_projects,
    'folder-publicshare': folder_publicshare,
    'folder-remote': folder_remote,
    'folder-templates': folder_templates,
    'folder-videos': folder_videos,
    'folder': folder,
    'network-server': network_server,
    'network-workgroup': network_workgroup,
    'user-bookmarks': user_bookmarks,
    'user-desktop': user_desktop,
    'user-home': user_home,
    'user-trash': user_trash,
    'avatar-default': avatar_default,
    'folder-open': folder_open,
    'image-loading': image_loading,
    'image-missing': image_missing,
    'user-trash-full': user_trash_full,
  };

  /// Resolves a full-color icon by its XDG name (e.g. `'text-x-generic'`).
  static AdwFullColorIconData? byName(String name) => all[name];
}
