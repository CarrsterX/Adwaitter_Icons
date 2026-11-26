import 'package:adwaitter_icons/adwaitter_icons.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AdwIcons symbolic icons have expected font metadata and render',
      (WidgetTester tester) async {
    expect(AdwIcons.folder_symbolic.fontFamily, 'AdwaitaIcons');
    expect(AdwIcons.folder_symbolic.fontPackage, 'adwaitter_icons');

    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Icon(AdwIcons.folder_symbolic, size: 24),
      ),
    );

    expect(find.byType(Icon), findsOneWidget);
  });

  testWidgets('AdwFullColorIcons exposes asset paths and AdwFullColorIcon renders',
      (WidgetTester tester) async {
    expect(AdwFullColorIcons.text_x_generic.assetPath,
        contains('assets/fullcolor/'));
    expect(AdwFullColorIcons.folder.assetPath, contains('assets/fullcolor/'));

    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: AdwFullColorIcon(
          AdwFullColorIcons.text_x_generic,
          size: 64,
        ),
      ),
    );

    final image = tester.widget<Image>(find.byType(Image));
    expect(image.width, 64);
    expect(image.height, 64);
  });
}
