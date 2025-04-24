// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "VietnameseInput",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "VietnameseInput",
            targets: ["VietnameseInput"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "VietnameseInput",
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/1.2.2_binary/LicenseKit_multiplatform.zip",
            checksum: "f8632077b18ae1641ae72ee65987d3ffc180c25d0fbdcb218399d7c84acb9583"
        )
    ]
)
