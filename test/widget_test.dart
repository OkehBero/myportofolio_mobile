import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/main.dart';
import 'package:myportofolio_mobile/services/api_client.dart';

void main() {
  testWidgets('Home page renders welcome text', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp(apiClient: ApiClient()));

    expect(find.text('MyPortofolio'), findsOneWidget);
    expect(find.text('Selamat datang di MyPortofolio Mobile!'), findsOneWidget);
  });
}
