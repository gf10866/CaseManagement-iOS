// swift-tools-version: 6.2
import PackageDescription

let package = Package(
  name: "CaseManagement",
  platforms: [.iOS(.v18), .macOS(.v26)],
  products: [
    .library(name: "AppModules", targets: ["AppModules"])
  ],
  
  dependencies: [
    .package(path: "Packages/AppBaseFoundation"),
    .package(path: "Packages/AppUtils"),
    .package(path: "Packages/AppNetwork"),
    .package(path: "Packages/AppBusinessCore"),
    .package(path: "Packages/AppFeatureCase"),
    .package(path: "Packages/AppFeatureTask"),
    .package(path: "Packages/AppFeatureMe"),
    .package(path: "Packages/AppFeatureMessage"),
    .package(path: "Packages/AppPageMain"),
    .package(path: "Packages/AppLogin")
  ],
  
  targets: [
    // 这个 target 只负责“re-export/聚合”你所有内部模块
    .target(
      name: "AppModules",
      dependencies: [
          .product(name: "AppBaseFoundation", package: "AppBaseFoundation"),
          .product(name: "AppUtils", package: "AppUtils"),
          .product(name: "AppNetwork", package: "AppNetwork"),
          .product(name: "AppBusinessCore", package: "AppBusinessCore"),
          .product(name: "AppFeatureCase", package: "AppFeatureCase"),
          .product(name: "AppFeatureTask", package: "AppFeatureTask"),
          .product(name: "AppFeatureMe", package: "AppFeatureMe"),
          .product(name: "AppFeatureMessage", package: "AppFeatureMessage"),
          .product(name: "AppPageMain", package: "AppPageMain"),
          .product(name: "AppLogin", package: "AppLogin"),
      ]
    )
  ]
)
