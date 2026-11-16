// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PostFinanceCheckoutSdk",
    platforms: [.iOS("15.1")],
    products: [
        .library(
            name: "PostFinanceCheckoutSdk",
            targets: ["PostFinanceCheckoutSdk", "ThreeDS_SDK", "hermes"]
        )
    ],
    targets: [
        .binaryTarget(name: "PostFinanceCheckoutSdk", path: "./PostFinanceCheckoutSdk.xcframework"),
        .binaryTarget(name: "ThreeDS_SDK", path: "./ThreeDS_SDK.xcframework"),
        .binaryTarget(name: "hermes", path: "./hermes.xcframework")
    ]
)
