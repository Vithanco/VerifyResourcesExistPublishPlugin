// swift-tools-version:5.5

/**
*  VerifyResourcesExist plugin for Publish
*  Copyright (c) Mikhail Akopov 2020
*  MIT license, see LICENSE file for details
*/

import PackageDescription

let package = Package(
    name: "VerifyResourcesExistPublishPlugin",
    platforms: [.macOS(.v12)],
    products: [
        .library(
            name: "VerifyResourcesExistPublishPlugin",
            targets: ["VerifyResourcesExistPublishPlugin"]),
    ],
    dependencies: [
        .package(name: "Publish",url: "https://github.com/johnsundell/publish.git", from: "0.9.0")
    ],
    targets: [
        .target(
            name: "VerifyResourcesExistPublishPlugin",
            dependencies: ["Publish"]),
        .testTarget(
            name: "VerifyResourcesExistPublishPluginTests",
            dependencies: ["VerifyResourcesExistPublishPlugin"]),
    ]
)
