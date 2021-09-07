// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "ZipZap",
    defaultLocalization: "en",
	platforms: [
		.macOS(.v10_11),
		.iOS(.v10),
		.tvOS(.v10),
		.watchOS(.v3)
	],
	products: [
		.library(
			name: "ZipZap",
			targets: ["ZipZap"])
	],
	targets: [
		.target(
			name: "ZipZap",
			dependencies: [],
			path: "ZipZap",
            exclude: ["Info.plist"],
            publicHeadersPath: "Public/",
			cSettings: [
                .headerSearchPath("Public/"),
                .headerSearchPath("Private/"),
                .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release))
			]
		)
	],
    cxxLanguageStandard: .cxx11
)
