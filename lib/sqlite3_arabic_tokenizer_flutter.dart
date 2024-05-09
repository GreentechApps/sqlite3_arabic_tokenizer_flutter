import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'sqlite3_arabic_tokenizer_flutter_platform_interface.dart';

class Sqlite3ArabicTokenizerFlutter {
  Future<DynamicLibrary?> loadNativeLibrary() async {
    if (Platform.isAndroid) {
      try {
        return Future.value(DynamicLibrary.open('libarabictokenizer.so'));
      } on ArgumentError {
        // On some (especially old) Android devices, we somehow can't dlopen
        // libraries shipped with the apk. We need to find the full path of the
        // library (/data/data/<id>/lib/libsqlite3.so) and open that one.
        // For details, see https://github.com/simolus3/moor/issues/420
        final appIdAsBytes = File('/proc/self/cmdline').readAsBytesSync();

        // app id ends with the first \0 character in here.
        final endOfAppId = max(appIdAsBytes.indexOf(0), 0);
        final appId = String.fromCharCodes(appIdAsBytes.sublist(0, endOfAppId));

        return Future.value(
          DynamicLibrary.open(
              '/data/data/$appId/lib/libsqlite3_arabic_tokenizer.so'),
        );
      } catch (_) {
        final status = await Sqlite3ArabicTokenizerFlutterPlatform.instance
            .loadNativeLibrary();
        if (status) {
          return Future.value(DynamicLibrary.open('libarabictokenizer.so'));
        }
      }
    } else if (Platform.isWindows) {
      return Future.value(
        DynamicLibrary.open('assets/sqlite3-arabic-tokenizer.dll'),
      );
    } else if (Platform.isIOS || Platform.isMacOS) {
      return Future.value(
        DynamicLibrary.open(
            'sqlite3_arabic_tokenizer.framework/sqlite3_arabic_tokenizer'),
      );
    } else if (Platform.isLinux) {
      final library = DynamicLibrary.executable();
      if (library.providesSymbol("sqlite3_sqlitearabictokenizer_init")) {
        return Future.value(library);
      }
    }
    return Future.value(null);
  }
}
