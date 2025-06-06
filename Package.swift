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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/1.4.1_binary/LicenseKit.zip",
            checksum: "0f2d4bcebb2da6acc1a05692d174ba965be9c25b23cd71705274e30ac54cd5b3"
        ),
        .binaryTarget(
            name: "VietnameseInput",
            url: "https://github.com/Kankoda/VietnameseInput/releases/download/0.1.0_binary/VietnameseInput.zip",
            checksum: "ce2c59a948b614b3d8beda390b0446e723115b1c28ff98ab085f21f6489875ec"
        )
    ]
)
