// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "VietnameseInput",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
        .tvOS(.v15),
        .watchOS(.v8),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "VietnameseInput",
            targets: ["VietnameseInput", "LicenseKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "LicenseKit",
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/1.2.4_binary/LicenseKit.zip",
            checksum: "389a58fc8148215a8f8fed06960aa24ddaba3a5b88e73093f60256ddf947cc1d"
        ),
        .binaryTarget(
            name: "VietnameseInput",
//            path: "../src/.build/VietnameseInput_new.zip"
            url:
                "https://github.com/Kankoda/VietnameseInput/releases/download/0.0.2_binary/VietnameseInput_new.zip",
            checksum: "b129ddcd410653b7238e489e8e47c21ec363481ab3c56150fda8b2c5b043137c"
        )
    ]
)
