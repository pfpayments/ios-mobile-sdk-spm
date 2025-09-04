// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PostFinanceCheckoutSdk",
    platforms: [.iOS("12.4")],
    products: [
        .library(name: "PostFinanceCheckoutSdk",
                 targets: ["ThreeDS_SDK","TwintSDK","PostFinanceCheckoutSdk","PaymentResources"]),
    ],
    targets: [
		.binaryTarget(name: "ThreeDS_SDK", path: "ThreeDS_SDK.xcframework"),
		.binaryTarget(name: "TwintSDK", path: "TwintSDK.xcframework"),
		.binaryTarget(name: "PostFinanceCheckoutSdk", path: "PostFinanceCheckoutSdk.xcframework"),
	.target(
		name: "PaymentResources",
		dependencies: [
			.target(name: "PostFinanceCheckoutSdk")
		],
		path: "Sources/PaymentResources",
		sources: ["PaymentResources.swift"],
		resources: [
			.process("postfinancecheckoutsdkbundle.jsbundle")
		]
	)
    ]
)