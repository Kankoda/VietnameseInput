// swift-tools-version: 6.2

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
                .upToNextMajor(from: "2.4.1")
        )
    ],
    targets: [
        .binaryTarget(
            name: "VietnameseInput",
            url: "https://github.com/Kankoda/VietnameseInput-Binaries/releases/download/0.3.1/VietnameseInput.zip",
            checksum: "f59d9342f534ef068e8f36aaa408babdcae01ba277006eb4af6cc4dfd9ddc9da"
        ),
        .target(
            name: "VietnameseInputDependencies",
            dependencies: ["LicenseKit"],
            path: "Dependencies",
        )
    ]
)
