#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint encrypt_decrypt_plus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'encrypt_decrypt_plus'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files = 'encrypt_decrypt_plus/Sources/encrypt_decrypt_plus/**/*.swift'

  s.resource_bundles = {'encrypt_decrypt_plus_privacy' => ['encrypt_decrypt_plus/Sources/encrypt_decrypt_plus/PrivacyInfo.xcprivacy']}

  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
