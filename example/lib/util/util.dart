import 'dart:io';

@pragma("vm:platform-const")
final bool isSupportedPlatforms = [
  'linux',
  'macos',
  'ios',
  'android',
  'windows',
].contains(Platform.operatingSystem);