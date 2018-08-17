import 'package:flutter/services.dart';
import 'package:groovin_string_masks/groovin_string_masks.dart';
import 'package:text_formatters/helpers/unmask_functions.dart';

class MaskInputFormatter extends TextInputFormatter {
  MaskInputFormatter(this.mask) : assert(mask != null);

  final String mask;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue, // unused.
    TextEditingValue newValue,
  ) {
    var unmasked = characterUnmask(newValue.text);

    var formatter = new StringMask(
      mask,
    );

    var result = formatter.apply(unmasked);

    return newValue.copyWith(
      text: result,
    );
  }
}
