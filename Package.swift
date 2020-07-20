// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-wasm",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: "https://github.com/swiftwasm/JavaScriptKit", from: "0.5.0"),
        .package(url: "https://github.com/swiftwasm/JavaScriptKit", .revision("e7d5e54bf69c8fecdb88702b217a84954296d432")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "swift-wasm",
            dependencies: ["JavaScriptKit"]),
        .testTarget(
            name: "swift-wasmTests",
            dependencies: ["swift-wasm"]),
    ]
)
