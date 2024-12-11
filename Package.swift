// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ReadiumFuzi",
    products: [
        .library(name: "ReadiumFuzi", targets: ["ReadiumFuzi"]),
    ],
    targets: [
        .target(name: "ReadiumFuzi",
            path: "Sources",
            linkerSettings: [.linkedLibrary("xml2")]
        ),
        .testTarget(name: "ReadiumFuziTests",
                    dependencies: ["ReadiumFuzi"],
                    path: "Tests"
        )
    ]
)
