//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <sqlite3_arabic_tokenizer_flutter/sqlite3_arabic_tokenizer_flutter_plugin.h>
#include <sqlite3_flutter_libs/sqlite3_flutter_libs_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) sqlite3_arabic_tokenizer_flutter_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "Sqlite3ArabicTokenizerFlutterPlugin");
  sqlite3_arabic_tokenizer_flutter_plugin_register_with_registrar(sqlite3_arabic_tokenizer_flutter_registrar);
  g_autoptr(FlPluginRegistrar) sqlite3_flutter_libs_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "Sqlite3FlutterLibsPlugin");
  sqlite3_flutter_libs_plugin_register_with_registrar(sqlite3_flutter_libs_registrar);
}
