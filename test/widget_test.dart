// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

/*import 'package:flutter/material.dart';*/
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart'; // Ensure this imports the correct file

void main() {
  testWidgets('Check if Main Menu Button is present',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const EPayApp());

    // Verify that the Main Menu button is present.
    expect(find.text('Main Menu'), findsOneWidget);

    // Verify that other buttons are present.
    expect(find.text('Check Rates'), findsOneWidget);
    expect(find.text('WhatsApp ePay'), findsOneWidget);

    // Verify that the "Forgot Your Pin?" text is present.
    expect(find.text('Forgot Your Pin?\nDial *134*542# to Reset it'),
        findsOneWidget);
  });

  testWidgets('Navigate to Main Menu Screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const EPayApp());

    // Tap the 'Main Menu' button and trigger a frame.
    await tester.tap(find.text('Main Menu'));
    await tester.pumpAndSettle();

    // Verify that we navigate to the MainMenuScreen.
    expect(find.text('ePay Main Menu'), findsOneWidget);
  });
}
