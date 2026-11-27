const fs = require('fs');
const path = require('path');
const { generateFonts } = require('fantasticon');

const SYSTEM_ICONS_PATH =
  process.env.ADWAITA_SYMBOLIC_PATH ||
  process.argv[2] ||
  '/usr/share/icons/Adwaita/symbolic';
const STAGING_PATH = path.join(__dirname, 'staging_svgs');
const OUTPUT_FONTS_PATH = path.join(__dirname, '..', 'assets', 'fonts');
const OUTPUT_DART_PATH = path.join(__dirname, '..', 'lib', 'adwaitter_icons.dart');

function sanitizeName(fileName) {
  return fileName
    .replace(/\.svg$/, '')
    .replace(/[^a-zA-Z0-9_]/g, '_')
    .toLowerCase();
}

async function run() {
  console.log(`1. Scanning GNOME Adwaita symbolic icons in ${SYSTEM_ICONS_PATH}...`);
  if (!fs.existsSync(SYSTEM_ICONS_PATH)) {
    console.error(`Error: System icon directory not found: ${SYSTEM_ICONS_PATH}`);
    process.exit(1);
  }

  if (fs.existsSync(STAGING_PATH)) {
    fs.rmSync(STAGING_PATH, { recursive: true, force: true });
  }
  fs.mkdirSync(STAGING_PATH, { recursive: true });

  const categories = fs.readdirSync(SYSTEM_ICONS_PATH);
  let totalCopied = 0;
  const processedNames = new Set();

  for (const cat of categories) {
    const catPath = path.join(SYSTEM_ICONS_PATH, cat);
    if (!fs.statSync(catPath).isDirectory()) continue;

    const files = fs.readdirSync(catPath).filter(f => f.endsWith('.svg'));
    for (const file of files) {
      const cleanName = sanitizeName(file);
      if (processedNames.has(cleanName)) continue; // Avoid collisions across categories
      processedNames.add(cleanName);

      const src = path.join(catPath, file);
      const dst = path.join(STAGING_PATH, `${cleanName}.svg`);
      fs.copyFileSync(src, dst);
      totalCopied++;
    }
  }

  console.log(`2. Prepared ${totalCopied} unique icons in staging directory.`);

  console.log('3. Generating TrueType font (AdwaitaIcons.ttf)...');
  fs.mkdirSync(OUTPUT_FONTS_PATH, { recursive: true });

  await generateFonts({
    inputDir: STAGING_PATH,
    outputDir: OUTPUT_FONTS_PATH,
    name: 'AdwaitaIcons',
    fontTypes: ['ttf'],
    assetTypes: ['json'],
    codepoints: {},
    prefix: '',
    normalize: true,
  });

  console.log('4. Generating Dart icon mapping (lib/adwaitter_icons.dart)...');
  const jsonPath = path.join(OUTPUT_FONTS_PATH, 'AdwaitaIcons.json');
  const glyphMap = JSON.parse(fs.readFileSync(jsonPath, 'utf8'));

  const sortedKeys = Object.keys(glyphMap).sort();

  let dartCode = `// AUTOMATICALLY GENERATED - DO NOT MODIFY MANUALLY
// Based on official GNOME adwaita-icon-theme from GitLab:
// https://gitlab.gnome.org/GNOME/adwaita-icon-theme

/// Official GNOME Adwaita symbolic and full-color icon theme for Flutter.
///
/// This library provides two complementary icon families with zero external
/// dependencies and full Linux, Android, iOS, macOS, Windows, and Web/WASM
/// support:
///
/// * **Symbolic icons** ([AdwIcons]): ${sortedKeys.length} monochrome vector glyphs packaged in
///   the \`AdwaitaIcons\` TrueType font as standard [IconData] constants.
/// * **Full-color icons** ([AdwFullColorIcons] & [AdwFullColorIcon]): 71
///   pre-rendered 128×128 PNG assets covering XDG \`devices\`, \`mimetypes\`,
///   \`places\`, and \`status\` icons.
///
/// ## Quick Start
///
/// \`\`\`dart
/// import 'package:adwaitter_icons/adwaitter_icons.dart';
/// import 'package:flutter/widgets.dart';
///
/// const symbolic = Icon(AdwIcons.folder_symbolic, size: 24);
/// const fullColor = AdwFullColorIcon(AdwFullColorIcons.folder, size: 48);
/// \`\`\`
library adwaitter_icons;

import 'package:flutter/widgets.dart';

export 'src/adw_fullcolor_icons.dart';

/// Official GNOME Adwaita symbolic icon suite for Flutter.
///
/// Each constant is a standard Flutter [IconData] backed by the \`AdwaitaIcons\`
/// TrueType font bundled in \`adwaitter_icons\`, so it works with [Icon] and any
/// widget accepting an [IconData] (including \`Adwaitter\`, \`Libadwaitter\`,
/// Material, and Cupertino widgets).
///
/// \`\`\`dart
/// const Icon(
///   AdwIcons.document_save_symbolic,
///   size: 20,
/// )
/// \`\`\`
///
/// See also:
///
/// * [AdwFullColorIcons], for pre-rendered full-color Adwaita icons.
/// * [AdwFullColorIcon], the widget that renders an [AdwFullColorIconData].
///
/// {@category Symbolic Icons}
abstract final class AdwIcons {
  static const String _fontFamily = 'AdwaitaIcons';
  static const String _fontPackage = 'adwaitter_icons';

`;

  for (const key of sortedKeys) {
    const codePoint = glyphMap[key];
    const hex = Number(codePoint).toString(16).padStart(4, '0');
    const identifier = /^[0-9]/.test(key) ? `icon_${key}` : key;
    dartCode += `  /// Symbolic icon \`${key}\`.\n`;
    dartCode += `  static const IconData ${identifier} =\n`;
    dartCode += `      IconData(0x${hex}, fontFamily: _fontFamily, fontPackage: _fontPackage);\n\n`;
  }

  dartCode += `}\n`;

  fs.mkdirSync(path.dirname(OUTPUT_DART_PATH), { recursive: true });
  fs.writeFileSync(OUTPUT_DART_PATH, dartCode, 'utf8');

  if (fs.existsSync(jsonPath)) {
    fs.unlinkSync(jsonPath);
  }

  console.log(`Generation complete! ${sortedKeys.length} symbolic icons available in AdwIcons.`);
}

run().catch(err => {
  console.error('Generation failed:', err);
  process.exit(1);
});
