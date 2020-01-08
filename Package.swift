// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PythonBridge",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PythonBridge",
            targets: ["PythonBridge"]),
    ],
    targets: [
        .systemLibrary(
            name: "CPython",
            pkgConfig: "python-2.7",
            providers: [
                .brew(["python"]),
                .apt(["python"]),
                ]
            ),
        .target(
            name: "PythonBridge",
            dependencies: ["CPython"]),
    ]
)
