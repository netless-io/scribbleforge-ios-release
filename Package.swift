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
            url: "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.2.0-beta.3/ScribbleForgeCore.xcframework.zip",
            checksum: "14588464f9d2c22f2c6baf2e197b4e08961281f186e05cbae7b15b10b247b21b"
        ),
        .binaryTarget(
            name: "ScribbleForge",
            url: "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.2.0-beta.3/ScribbleForge.xcframework.zip",
            checksum: "fef75133ce31a9773a59aec9b65a3846491ed83da0e096619db2145285972221"
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
