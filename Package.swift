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
        .package(url: "https://github.com/LicenseKit/LicenseKit.git", .upToNextMajor(from: "1.4.0"))
    ],
    targets: [
        .binaryTarget(
            name: "VietnameseInput",
            url: "https://github.com/Kankoda/VietnameseInput/releases/download/0.1.0_binary/VietnameseInput.zip",
            checksum: "ce2c59a948b614b3d8beda390b0446e723115b1c28ff98ab085f21f6489875ec"
        ),
        .target(
            name: "VietnameseInputDependencies",
            dependencies: ["LicenseKit"],
            path: "Dependencies",
        )
    ]
)
