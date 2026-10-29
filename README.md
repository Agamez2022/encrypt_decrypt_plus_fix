[<img src="https://datadirr.com/datadirr.png" width="200" />](https://datadirr.com)


# encrypt_decrypt_plus

This package helps to encryption and decryption with or without secret key.

## Using

For help getting started with Flutter, view our
[online documentation](https://pub.dev/documentation/encrypt_decrypt_plus/latest), which offers tutorials,
samples, guidance on mobile and web development, and a full API reference.

## Installation

First, add `encrypt_decrypt_plus` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

In your flutter project add the dependency:

```yml
dependencies:
  ...
  encrypt_decrypt_plus:
```

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).

## Example

Please follow this [example](https://github.com/datadirr/encrypt_decrypt_plus/tree/master/example) here.


### AES Encryption and Decryption

* AES-256-CBC
```dart
AES aes = AES(secretKey: "datadirr", iv: "datadirr");
String encryptTxt = aes.encryptAES256CBC("Hello datadirr");
String decryptTxt = aes.decryptAES256CBC(encryptTxt);
```


### XOR Encryption and Decryption

1. With Secret Key

* Method 1
```dart
XOR xor = XOR(secretKey: "datadirr");
String encryptTxt = xor.xorEncode("Hello datadirr");
String decryptTxt = xor.xorDecode(encryptTxt);
```

* Method 2
```dart
XOR xor = XOR();
String encryptTxt = xor.xorEncode("Hello datadirr", secretKey: "datadirr");
String decryptTxt = xor.xorDecode(encryptTxt, secretKey: "datadirr");
```

* Method 3
```dart
String encryptTxt = XOR().xorEncode("Hello datadirr", secretKey: "datadirr");
String decryptTxt = XOR().xorDecode(encryptTxt, secretKey: "datadirr");
```

* Method 4
```dart
String encryptTxt = XOR(secretKey: "datadirr").xorEncode("Hello datadirr");
String decryptTxt = XOR(secretKey: "datadirr").xorDecode(encryptTxt);
```


1. Without Secret Key

* Method 1
```dart
XOR xor = XOR();
String encryptTxt = xor.xorEncode("Hello datadirr");
String decryptTxt = xor.xorDecode(encryptTxt);
```

* Method 2
```dart
String encryptTxt = XOR().xorEncode("Hello datadirr");
String decryptTxt = XOR().xorDecode(encryptTxt);
```


### JWT token decode
```dart
JWT.decode("jwt_token");
```

## Apple dependency managers (2.1.0 fork)

This fork supports both Swift Package Manager and CocoaPods. SwiftPM integration
requires Flutter 3.44 or later and a Swift 5.9-compatible toolchain. Its deployment
targets are iOS 13+ and macOS 10.15+; the existing CocoaPods deployment targets
remain unchanged. The consuming application can require a newer OS.

Each Apple platform has an `encrypt_decrypt_plus/Package.swift` manifest and a
`Sources/encrypt_decrypt_plus` directory. Both managers compile the same Swift
source and bundle the existing `PrivacyInfo.xcprivacy`. The local FlutterFramework
dependency is provided by Flutter tooling; do not replace it with a published
third-party package or add this plugin directly through Xcode's package picker.

The Dart package name remains `encrypt_decrypt_plus`. Its encryption/decryption,
JWT APIs and Android/web/desktop implementations are unchanged. SPM support does
not migrate stored data or change keys and ciphertext formats.

Before distributing an Apple build, validate the example on a Mac with SwiftPM
enabled and disabled, inspect the resulting privacy resource bundle and test an
archive with the consuming application's Flutter/Xcode versions. Preparation and
Dart tests on Windows do not establish native build or runtime compatibility.

After publishing this fork, applications can select the Git repository and pin
an immutable commit. The original repository metadata above is preserved; replace
it with the fork URL when that URL has been chosen.

Flutter's migration guide:
https://docs.flutter.dev/packages-and-plugins/swift-package-manager/for-plugin-authors
