import 'package:flutter_test/flutter_test.dart';
import 'package:core_ui/core_ui.dart';

void main() {
  test('GumpalanColors values are loaded', () {
    expect(GumpalanColors.background.toARGB32(), equals(0xFF8BE04E));
    expect(GumpalanColors.dark.toARGB32(), equals(0xFF0B1410));
  });

  test('GumpalanTheme generates light and dark themes', () {
    final light = GumpalanTheme.lightTheme;
    final dark = GumpalanTheme.darkTheme;
    expect(light.useMaterial3, isTrue);
    expect(dark.useMaterial3, isTrue);
  });
}
