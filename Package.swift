// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "VietnameseInput",
    platforms: [
        .iOS(.v16),
        .macOS(.v14),
        .tvOS(.v16),
        .watchOS(.v10),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "VietnameseInput",
            targets: ["VietnameseInput", "VietnameseInputDependencies"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/LicenseKit/LicenseKit.git",
                .upToNextMajor(from: "2.2.6")
        )
    ],
    targets: [
        .binaryTarget(
            name: "VietnameseInput",
            url: "https://github.com/Kankoda/VietnameseInput-Binaries/releases/download/0.3.0/VietnameseInput.zip",
            checksum: "d45324b2f1b4d751c35c44ad67b1b37a77cc8ffa68fb00638372175f94224318"
        ),
        .target(
            name: "VietnameseInputDependencies",
            dependencies: ["LicenseKit"],
            path: "Dependencies",
        )
    ]
)
