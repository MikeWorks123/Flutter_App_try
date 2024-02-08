// widget_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:first_flutter/main.dart';

void main() {
  testWidgets('Login button press test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(LoginApp());

    // Enter some values in the text fields.
    await tester.enterText(find.byKey(Key('usernameField')), 'test_user');
    await tester.enterText(find.byKey(Key('passwordField')), 'test_password');

    // Tap the login button and trigger a frame.
    await tester.tap(find.text('Login'));
    await tester.pump();

    // Verify that the login logic has been executed.
    expect(find.text('Username: test_user'), findsOneWidget);
    expect(find.text('Password: test_password'), findsOneWidget);
  });
}
