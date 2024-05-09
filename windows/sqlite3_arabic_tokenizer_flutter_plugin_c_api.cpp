#include "include/sqlite3_arabic_tokenizer_flutter/sqlite3_arabic_tokenizer_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "sqlite3_arabic_tokenizer_flutter_plugin.h"

void Sqlite3ArabicTokenizerFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  sqlite3_arabic_tokenizer_flutter::Sqlite3ArabicTokenizerFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
