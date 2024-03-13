// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HomeModule",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "HomeModule",
            targets: ["HomeModule"]),
    ],
    dependencies: [
        .package(path: "/BalanceCore"),
        .package(path: "/ScanQRModule"),
        .package(path: "/PaymentHistoryModule"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "HomeModule",
            dependencies: [
                "BalanceCore",
                "ScanQRModule",
                "PaymentHistoryModule"
            ]
        ),
        .testTarget(
            name: "HomeModuleTests",
            dependencies: ["HomeModule"]),
    ]
)
