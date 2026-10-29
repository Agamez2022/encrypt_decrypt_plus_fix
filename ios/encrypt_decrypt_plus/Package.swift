// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "encrypt_decrypt_plus",
    platforms: [.iOS("13.0")],
    products: [
        .library(name: "encrypt-decrypt-plus", targets: ["encrypt_decrypt_plus"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "encrypt_decrypt_plus",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            resources: [.process("PrivacyInfo.xcprivacy")]
        )
    ]
)
