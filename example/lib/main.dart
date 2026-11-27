import 'package:adwaitter_icons/adwaitter_icons.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const AdwaitterIconsExampleApp());
}

/// Minimal example showcasing symbolic [AdwIcons] and full-color
/// [AdwFullColorIcon] icons.
class AdwaitterIconsExampleApp extends StatelessWidget {
  /// Creates the example application.
  const AdwaitterIconsExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(AdwIcons.applications_system_symbolic, size: 32),
                SizedBox(width: 16),
                Icon(
                  AdwIcons.preferences_system_notifications_symbolic,
                  size: 32,
                ),
                SizedBox(width: 16),
                Icon(AdwIcons.security_high_symbolic, size: 32),
              ],
            ),
            SizedBox(height: 24),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AdwFullColorIcon(AdwFullColorIcons.folder, size: 48),
                SizedBox(width: 16),
                AdwFullColorIcon(AdwFullColorIcons.text_x_generic, size: 48),
                SizedBox(width: 16),
                AdwFullColorIcon(AdwFullColorIcons.user_home, size: 48),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
