import 'package:flutter_test/flutter_test.dart';
import 'package:sqlite3_arabic_tokenizer_flutter/sqlite3_arabic_tokenizer_flutter.dart';
import 'package:sqlite3_arabic_tokenizer_flutter/sqlite3_arabic_tokenizer_flutter_platform_interface.dart';
import 'package:sqlite3_arabic_tokenizer_flutter/sqlite3_arabic_tokenizer_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSqlite3ArabicTokenizerFlutterPlatform
    with MockPlatformInterfaceMixin
    implements Sqlite3ArabicTokenizerFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final Sqlite3ArabicTokenizerFlutterPlatform initialPlatform = Sqlite3ArabicTokenizerFlutterPlatform.instance;

  test('$MethodChannelSqlite3ArabicTokenizerFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSqlite3ArabicTokenizerFlutter>());
  });

  test('getPlatformVersion', () async {
    Sqlite3ArabicTokenizerFlutter sqlite3ArabicTokenizerFlutterPlugin = Sqlite3ArabicTokenizerFlutter();
    MockSqlite3ArabicTokenizerFlutterPlatform fakePlatform = MockSqlite3ArabicTokenizerFlutterPlatform();
    Sqlite3ArabicTokenizerFlutterPlatform.instance = fakePlatform;

    expect(await sqlite3ArabicTokenizerFlutterPlugin.getPlatformVersion(), '42');
  });
}
