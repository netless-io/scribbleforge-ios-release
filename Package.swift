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
            url: "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.3.0/ScribbleForgeCore.xcframework.zip",
            checksum: "788c09af8e804d941cf4d69bd42f9806811a272f2c8cb73515e56605bca12ed7"
        ),
        .binaryTarget(
            name: "ScribbleForge",
            url: "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.3.0/ScribbleForge.xcframework.zip",
            checksum: "7c61cb3072e5cf5c193f240c0fda208012e6f0b4537b2f1ffa11ff007c3b2a50"
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
