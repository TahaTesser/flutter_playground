import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

    // This is a regression test for https://github.com/flutter/flutter/issues/153544.
  testWidgets('Tooltip is drawn when hovering within IconButton area but outside the Icon tself', (WidgetTester tester) async {
    const String tooltipText = 'Test tooltip';
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ac_unit),
              tooltip: tooltipText,
            ),
          ),
        ),
      ),
    );

    Finder findTooltipContainer(String tooltipText) {
      return find.ancestor(
        of: find.text(tooltipText),
        matching: find.byType(Container),
      );
    }

    // Verify that the tooltip is not shown initially.
    expect(findTooltipContainer(tooltipText), findsNothing);

    // Start hovering within IconButton area to show the tooltip.
    final TestGesture gesture = await tester.createGesture(kind: PointerDeviceKind.mouse);
    await gesture.addPointer();

    final Offset topLeft = tester.getTopLeft(find.byType(Icon));
    // print(topLeft);
    await gesture.moveTo(Offset(topLeft.dx - 1, topLeft.dy - 1));
    await tester.pumpAndSettle();

    // Verify that the tooltip is shown.
    expect(findTooltipContainer(tooltipText), findsOneWidget);
  });
 }
