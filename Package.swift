// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RecordManagerLibrary",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RecordManagerLibrary",
            targets: ["RecordManagerLibrary"]),
    ],
    targets: [
        .binaryTarget(
            name: "RecordManagerFrameWork", // .xcframework 타겟 참조
            path: "Frameworks/RecordManagerFrameWork.xcframework" // .xcframework 경로
        ),
        .target(
            name: "RecordManagerLibrary",
            dependencies: [
                .target(name: "RecordManagerFrameWork"),
            ]
        ),

    ]
)
