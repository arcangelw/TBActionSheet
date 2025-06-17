// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TBActionSheet",
    products: [
        .library(
            name: "TBActionSheet",
            targets: ["TBActionSheet"]
        ),
    ],
    targets: [
        .target(
            name: "TBActionSheet",
            path: ".",
            exclude: ["README.md", "Example", "images", "TBActionSheet.podspec"],
            sources: ["Source"],
            resources: [.copy("PrivacyInfo.xcprivacy")],
            cSettings: [
                .headerSearchPath("Source"),
                .define("TB_ACTION_SHEET_PACKAGE")
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Accelerate")
            ]
        ),
    ]
)
