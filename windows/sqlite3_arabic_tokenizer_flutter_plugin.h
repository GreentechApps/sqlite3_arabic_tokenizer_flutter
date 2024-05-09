#ifndef FLUTTER_PLUGIN_SQLITE3_ARABIC_TOKENIZER_FLUTTER_PLUGIN_H_
#define FLUTTER_PLUGIN_SQLITE3_ARABIC_TOKENIZER_FLUTTER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace sqlite3_arabic_tokenizer_flutter {

class Sqlite3ArabicTokenizerFlutterPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  Sqlite3ArabicTokenizerFlutterPlugin();

  virtual ~Sqlite3ArabicTokenizerFlutterPlugin();

  // Disallow copy and assign.
  Sqlite3ArabicTokenizerFlutterPlugin(const Sqlite3ArabicTokenizerFlutterPlugin&) = delete;
  Sqlite3ArabicTokenizerFlutterPlugin& operator=(const Sqlite3ArabicTokenizerFlutterPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace sqlite3_arabic_tokenizer_flutter

#endif  // FLUTTER_PLUGIN_SQLITE3_ARABIC_TOKENIZER_FLUTTER_PLUGIN_H_
