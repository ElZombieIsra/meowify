import 'package:flutter_test/flutter_test.dart';
import 'package:meowify/src/gifs/presentation/views/gif_generator.dart';

import '../../../../utils.dart';
import '../components/buttons/generate_gif_button.dart';

void main() {
  testWidgets('should show links list view', (WidgetTester tester) async {
    await tester.pumpWidget(pumpApp(const GifGenerator()));

    expect(find.byType(GenerateGifButton, skipOffstage: false), findsOneWidget);
  });
}
