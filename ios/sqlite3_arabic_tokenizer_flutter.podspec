#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint sqlite3_arabic_tokenizer_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'sqlite3_arabic_tokenizer_flutter'
  s.version          = '0.0.1'
  s.summary          = 'SQLite3 Arabic Tokenizer'
  s.description      = <<-DESC
SQLite3 Arabic Tokenizer
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'sqlite3_arabic_tokenizer', '0.0.3'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
