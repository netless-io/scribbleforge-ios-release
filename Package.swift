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
            url: "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.1.0-canary.0/ScribbleForgeCore.xcframework.zip",
            checksum: "68b8829cd3ebbb455173c0e5a328813d7b8f00d7bf93ecf86c65806faeb9b1e3"
        ),
        .binaryTarget(
            name: "ScribbleForge",
            url: "https://github.com/netless-io/scribbleforge-ios-release/releases/download/1.1.0-canary.0/ScribbleForge.xcframework.zip",
            checksum: "44f16336d37830227dc0cac5fa29d5536e3611b365dd750deec91af38773db7a"
        ),
        .target(
            name: "ScribbleForgeRTM",
            dependencies: [
                .product(name: "AgoraRTM", package: "AgoraRtm_Apple"),
                "ScribbleForge",
            ],
            path: ".",
        ),
    ]
)
