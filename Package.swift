// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "APNGKit",
    platforms: [.macOS(.v10_15), .iOS(.v13)],
    products: [
        .library(
            name: "APNGKit",
            targets: ["APNGKit"]
		),
        .library(
            name: "Clibpng",
            targets: ["Clibpng"]
		),
    ],
	dependencies: [],
    targets: [
        .target(
            name: "APNGKit",
            dependencies: ["Clibpng"],
            path: "APNGKit",
            exclude: ["libpng-apng"]
        ),
        .target(
            name: "Clibpng",
            path: "APNGKit/libpng-apng"
		),
    ]
)
