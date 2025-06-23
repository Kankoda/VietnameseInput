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
        .package(url: "https://github.com/LicenseKit/LicenseKit.git", .upToNextMajor(from: "1.4.1")),
        .package(url: "https://github.com/danielsaidi/SwiftUIKit", .upToNextMajor(from: "5.7.0"))
    ],
    targets: [
        .binaryTarget(
            name: "VietnameseInput",
            url: "https://github.com/Kankoda/VietnameseInput/releases/download/0.1.1_binary/VietnameseInput.zip",
            checksum: "f6c65e87af500193bc6a51534e4c8f7dff5505133d9c6e67553118b3c8c280ad"
        ),
        .target(
            name: "VietnameseInputDependencies",
            dependencies: ["LicenseKit", "SwiftUIKit"],
            path: "Dependencies",
        )
    ]
)
