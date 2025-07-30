// swift-tools-version: 5.7
// (Use 5.7+ for better compatibility with iOS and Xcode)

import PackageDescription

let package = Package(
    name: "JadSPMPod",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "JadSPMPod",
            targets: ["JadSPMPod"]
        ),
    ],
    targets: [
        .target(
            name: "JadSPMPod",
            path: "Sources"
        ),
        .testTarget(
            name: "JadSPMPodTests",
            dependencies: ["JadSPMPod"],
            path: "Tests"
        ),
    ]
)
