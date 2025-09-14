Pod::Spec.new do |spec|

  spec.name         = "NFCPassportReader"
  spec.version      = "2.1.2"
  spec.summary      = "This package handles reading an NFC Enabled passport using iOS 13 CoreNFC APIS"

  spec.homepage     = "https://github.com/AndyQ/NFCPassportReader"
  spec.license      = "MIT"
  spec.author       = { "Andy Qua" => "andy.qua@gmail.com" }
  spec.platform = :ios
  spec.ios.deployment_target = "14.0"

  spec.source       = { :git => "https://github.com/AndyQ/NFCPassportReader.git", :tag => "#{spec.version}" }

  spec.source_files  = "Sources/**/*.{swift}"

  spec.swift_version = "5.7"

  # Prefer OpenSSL 3.x under CocoaPods as requested
  spec.dependency "OpenSSL-Universal", '3.1.5001'
  spec.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC -weak_framework CryptoTokenKit' }
  spec.pod_target_xcconfig = {
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'SWIFT_OBJC_BRIDGING_HEADER' => '',
    'SWIFT_INSTALL_OBJC_HEADER' => 'NO'
  }

end
