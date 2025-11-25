// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ScribbleForge",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ScribbleForgeRTM",
            targets: ["ScribbleForgeRTM"]
        ),
        .library(
            name: "ScribbleForgeCore",
            targets: ["ScribbleForgeCore"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AgoraIO/AgoraRtm_Apple.git", from: .init(2, 2, 3)),
    ],
    targets: [
        .binaryTarget(
            name: "ScribbleForgeCore",
            url: "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.1.0-beta.1/ScribbleForgeCore.xcframework.zip",
            checksum: "08f0aad3b312a7d6ee77b65038e5f820072de3827dfee07e9c0103451d84331f"
        ),
        .binaryTarget(
            name: "ScribbleForge",
            url: "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.1.0-beta.1/ScribbleForge.xcframework.zip",
            checksum: "3c73896ca4424a573b4504f184478e9faaad98ed55a2d5f3781bd18cd1ee0b42"
        ),
        .target(
            name: "ScribbleForgeRTM",
            dependencies: [
                .product(name: "AgoraRTM", package: "AgoraRtm_Apple"),
                "ScribbleForge",
                "ScribbleForgeCore",
            ],
            path: ".",
        ),
    ]
)
