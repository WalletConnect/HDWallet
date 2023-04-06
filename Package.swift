// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "HDWalletKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "HDWalletKit",
            targets: ["HDWalletKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.0.0"),
        .package(name: "secp256k1", url: "https://github.com/Boilertalk/secp256k1.swift.git", from: "0.1.1"),
    ],
    targets: [
        .target(
            name: "HDWalletKit",
            dependencies: ["CryptoSwift", "secp256k1"],
            path: "Sources"),
        .testTarget(
            name: "HDWalletKitTests",
            dependencies: ["HDWalletKit"])
    ],
    swiftLanguageVersions: [.v5]
)
