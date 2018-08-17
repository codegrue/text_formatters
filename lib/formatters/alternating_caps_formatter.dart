// Copyright (c) 2018, codegrue. All rights reserved. Use of this source code
// is governed by the MIT license that can be found in the LICENSE file.

import 'package:flutter/services.dart';

class AlternatingCapsInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue, // unused.
    TextEditingValue newValue,
  ) {
    var text = newValue.text;
    var result = '';

    for (int i = 0; i < text.length; i++) {
      result += (i.isEven) ? text[i].toUpperCase() : text[i].toLowerCase();
    }

    return newValue.copyWith(
      text: result,
    );
  }
}
