# sqlite3_arabic_tokenizer_flutter

To use [sqlite3-arabic-tokenizer](https://github.com/GreentechApps/sqlite3-arabic-tokenizer) in Flutter.

# sqlite3-arabic-tokenizer

This is a custom [FTS5](https://www.sqlite.org/fts5.html) tokenizer for SQLite. If you don't know what is a custom
tokenizer, you can check [this](https://www.sqlite.org/fts5.html#custom_tokenizers).

This tokenizer will remove diacritics from Arabic text. Suppose, you have a Quran app where you want to search without
Arabic diacritics. Like you want to match 'الحمد' with 'ٱلْحَمْدُ'. You can use this tokenizer to create a virtual fts5
table that will do this.

# Getting Started

First, add `sqlite3_arabic_tokenizer_flutter` as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  sqlite3_arabic_tokenizer_flutter: ^0.0.1
```

Don't forget to `flutter pub get`.

Please check the __example app__ for detailed implementation.
For more info, read this [article](https://snnafi.medium.com/search-arabic-text-with-diacritics-using-sqlite-tokenizer-97326b938b4c)





