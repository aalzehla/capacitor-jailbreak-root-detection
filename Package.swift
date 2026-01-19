// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AalzehlaCapacitorJailbreakRootDetection",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AalzehlaCapacitorJailbreakRootDetection",
            targets: ["CapacitorJailbreakRootDetectionPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "CapacitorJailbreakRootDetectionPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Plugin/CapacitorJailbreakRootDetectionPlugin"),
        .testTarget(
            name: "CapacitorJailbreakRootDetectionTests",
            dependencies: ["CapacitorJailbreakRootDetectionPlugin"],
            path: "ios/PluginTests/CapacitorJailbreakRootDetectionTests")
    ]
)
