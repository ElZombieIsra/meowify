import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meowify/main.dart';
import 'package:meowify/src/meowify_api.dart';

import 'mocks/meowify_api_mock.dart';

void main() {
  testWidgets('should show links list view', (WidgetTester tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        apiProvider.overrideWithValue(MockApi()),
      ],
      child: const MyApp(),
    ));

    expect(find.byType(Scaffold), findsOneWidget);
  });
}
