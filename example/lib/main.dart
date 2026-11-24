import 'package:adwaitter_icons/adwaitter_icons.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const AdwaitterIconsExampleApp());
}

/// Minimal example showcasing symbolic icons from [AdwIcons].
class AdwaitterIconsExampleApp extends StatelessWidget {
  const AdwaitterIconsExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(AdwIcons.applications_system_symbolic, size: 32),
            SizedBox(width: 16),
            Icon(AdwIcons.preferences_system_notifications_symbolic, size: 32),
            SizedBox(width: 16),
            Icon(AdwIcons.security_high_symbolic, size: 32),
          ],
        ),
      ),
    );
  }
}
