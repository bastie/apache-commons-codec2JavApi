// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "commons-codec²JavApi",
  platforms: [.macOS(.v13),.visionOS(.v1),.iOS(.v16),.tvOS(.v16)],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "commons-codec2JavApi",
      targets: ["commons-codec2JavApi"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/bastie/JavApi4Swift.git",
      .upToNextMajor(from: "0.4.1")
    )
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "commons-codec2JavApi",
      dependencies: [
        .product(name: "JavApi", package: "JavApi4Swift")
      ]
    ),
    .testTarget(
      name: "commons-codec2JavApiTests",
      dependencies: ["commons-codec2JavApi",
                     .product(name: "JavApi", package: "JavApi4Swift")
      ],
      resources: [.process("Resources")]
    ),
  ]
)

