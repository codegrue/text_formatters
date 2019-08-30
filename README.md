# text_formatters

A package of pre-built `TextInputFormatter` objects to use with Flutter's `TextField` or `TextFormField` widgets.

## Formatters

- `UppercaseInputFormatter`, example 'THISISMYTEXT'
- `LowercaseInputFormatter`, example 'thisismytext'
- `AlternatingCapsInputFormatter`, example 'ThIsIsMyTeXt'

## Usage

``` dart
new TextField(
    inputFormatters: [
        UppercaseInputFormatter(),
    ],
),
```

## Dependencies

This widget set relies on these external third-party components:

- [groovin_string_masks](https://pub.dartlang.org/packages/groovin_string_masks)

## Changelog

Please see the [Changelog](https://github.com/codegrue/text_formatters/blob/master/CHANGELOG.md) page to know what's recently changed.

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/codegrue/text_formatters/issues).  

If you fixed a bug or implemented a new feature, please send a [pull request](https://github.com/codegrue/text_formatters/pulls).
