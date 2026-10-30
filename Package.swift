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
            url: "https://github.com/Kankoda/VietnameseInput-Binaries/releases/download/0.4.0/VietnameseInput.zip",
            checksum: "daf33f395bb92051819f9016b29632ca5a28a396f4b0c447c1803e8ca029baef"
        ),
        .target(
            name: "VietnameseInputDependencies",
            dependencies: ["LicenseKit"],
            path: "Dependencies",
        )
    ]
)
