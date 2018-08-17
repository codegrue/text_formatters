import 'package:flutter/services.dart';
import 'package:test/test.dart';

import 'package:text_formatters/text_formatters.dart';

void main() {
  test('UppercaseInputFormatter', () {
    final formatter = new UppercaseInputFormatter();
    final value = TextEditingValue(text: 'textstring');

    var result = formatter.formatEditUpdate(null, value);

    expect(result.text, 'TEXTSTRING');
  });

  test('LowercaseInputFormatter', () {
    final formatter = new LowercaseInputFormatter();
    final value = TextEditingValue(text: 'TEXTSTRING');

    var result = formatter.formatEditUpdate(null, value);

    expect(result.text, 'textstring');
  });

  test('AlternatingCapsInputFormatter', () {
    final formatter = new AlternatingCapsInputFormatter();
    final value = TextEditingValue(text: 'textstring');

    var result = formatter.formatEditUpdate(null, value);

    expect(result.text, 'TeXtStRiNg');
  });
}
