import 'package:flutter_test/flutter_test.dart';

import 'package:text_formatters/text_formatters.dart';

void main() {
  test('Unmask Function (phone)', () {
    var maskedText = "(800) 555-1212";
    var result = characterUnmask(maskedText);
    expect(result, '8005551212');

    maskedText = "(8001";
    result = characterUnmask(maskedText);
    expect(result, '8001');

    maskedText = "(800) 5551-212";
    result = characterUnmask(maskedText);
    expect(result, '8005551212');
  });

  test('Unmask Function (currency)', () {
    var maskedText = r"$12,345,678.90";
    var result = characterUnmask(maskedText);
    expect(result, '1234567890');

    maskedText = r"$12,345,678.90";
    result = characterUnmask(maskedText, additionalKeepCharacters: ".");
    expect(result, '12345678.90');
  });
}
