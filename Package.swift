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
            url: "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.2.0-beta.1/ScribbleForgeCore.xcframework.zip",
            checksum: "a142cc37c6ef986c2e1ca42032b80489f7fbbbad154a82208cab928634b1c7c1"
        ),
        .binaryTarget(
            name: "ScribbleForge",
            url: "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.2.0-beta.1/ScribbleForge.xcframework.zip",
            checksum: "da3a39eb56ed1023804cd6a5da120deab0678851165b0ae4a8b00d9bd8400964"
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
