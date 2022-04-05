// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let excludedFilenames: [String] = ["README.md"]

let package = Package(
    name: "Cryptography",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Cryptography",
            targets: ["Cipher", "Cryptanalysis"]),
        .library(
            name: "Cipher",
            targets: ["Cipher"]),
        .library(
            name: "Cryptanalysis",
            targets: ["Cryptanalysis"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "NumberTheory", url: "https://github.com/Logarithm-1/NumberTheory", branch: "main")
    ],
    targets: [
        //MARK: - Public API
        .target(
            name: "Cipher",
            dependencies: [],
            exclude: excludedFilenames),
        .target(
            name: "Cryptanalysis",
            dependencies: [],
            exclude: excludedFilenames),
        
        // MARK: - Unit test bundles
        .testTarget(
            name: "CipherTests",
            dependencies: ["Cipher"]),
        .testTarget(
            name: "CryptanalysisTests",
            dependencies: ["Cryptanalysis"]),
    ]
)
