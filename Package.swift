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
            targets: ["VietnameseInput", "VietnameseInputDependencies"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/LicenseKit/LicenseKit.git", .upToNextMajor(from: "1.4.1"))
    ],
    targets: [
        .binaryTarget(
            name: "VietnameseInput",
            url: "https://github.com/Kankoda/VietnameseInput/releases/download/0.1.6_binary/VietnameseInput.zip",
            checksum: "9cad9ee0524dc069cbff97d96a89a5a40ca9d4383e9f3491645db0b7c37116e1"
        ),
        .target(
            name: "VietnameseInputDependencies",
            dependencies: ["LicenseKit"],
            path: "Dependencies",
        )
    ]
)
