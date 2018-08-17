/// This iterates through the value and only keeps
/// letters or numbers
String characterUnmask(
  String maskedValue, {
  String additionalKeepCharacters: '',
}) {
  String acceptableCharacters =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ' + additionalKeepCharacters;
  String unmaskedValue = '';

  String uppercaseMaskedValue = maskedValue.toLowerCase();

  for (int i = 0; i < maskedValue.length; i++) {
    if (acceptableCharacters.contains(uppercaseMaskedValue[i]))
      unmaskedValue += maskedValue[i];
  }

  return unmaskedValue;
}

// /// used to reverse the value from a mask
// /// NOTE: COMMENTED OUT BECAUSE IT DOESN'T WORK 100% OF THE TIME
// String unmask(String mask, String maskedValue, int newCharacterPosition) {
//   String specialCharacters = '0AS';
//   String unmaskedValue = '';

//   // iterate accross the mask, pulling out characters from unmasked for each valid placeholder.
//   for (int i = 0; i < min(mask.length, maskedValue.length); i++) {
//     // if we find the new character, the mask won't line up anymore
//     if (i == newCharacterPosition) {
//       unmaskedValue += maskedValue[i];
//     } else {
//       int position = (i > newCharacterPosition)
//           ? i + 1 // add one if we pass the new character, so the mask lines up
//           : i;
//       if (specialCharacters.contains(mask[i]))
//         unmaskedValue += maskedValue[position];
//     }
//   }

//   return unmaskedValue;
// }
