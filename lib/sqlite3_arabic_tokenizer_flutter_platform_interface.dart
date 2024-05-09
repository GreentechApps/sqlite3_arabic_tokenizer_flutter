import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sqlite3_arabic_tokenizer_flutter_method_channel.dart';

abstract class Sqlite3ArabicTokenizerFlutterPlatform extends PlatformInterface {
  /// Constructs a Sqlite3ArabicTokenizerFlutterPlatform.
  Sqlite3ArabicTokenizerFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static Sqlite3ArabicTokenizerFlutterPlatform _instance =
      MethodChannelSqlite3ArabicTokenizerFlutter();

  /// The default instance of [Sqlite3ArabicTokenizerFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelSqlite3ArabicTokenizerFlutter].
  static Sqlite3ArabicTokenizerFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Sqlite3ArabicTokenizerFlutterPlatform] when
  /// they register themselves.
  static set instance(Sqlite3ArabicTokenizerFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> loadNativeLibrary() {
    throw UnimplementedError('loadNativeLibrary() has not been implemented.');
  }
}
