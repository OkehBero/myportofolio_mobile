import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/main.dart';

void main() {
  testWidgets('Halaman menu menampilkan InfoCard dan ItemCard',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // InfoCard: NPM, Name, Class.
    expect(find.text('NPM'), findsOneWidget);
    expect(find.text('2406000001'), findsOneWidget);
    expect(find.text('Name'), findsOneWidget);
    expect(find.text('Burhan'), findsOneWidget);
    expect(find.text('Class'), findsOneWidget);
    expect(find.text('PBP A'), findsOneWidget);

    // ItemCard: tiga tombol menu.
    expect(find.text('Lihat Proyek'), findsOneWidget);
    expect(find.text('Tambah Proyek'), findsOneWidget);
    expect(find.text('Logout'), findsOneWidget);
  });

  testWidgets('Menekan ItemCard memunculkan SnackBar',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Lihat Proyek'));
    await tester.pump();

    expect(
      find.text('Kamu telah menekan tombol Lihat Proyek!'),
      findsOneWidget,
    );
    expect(find.byType(SnackBar), findsOneWidget);
  });
}
