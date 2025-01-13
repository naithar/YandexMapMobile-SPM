// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "YandexMapsMobile",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "YandexMapsMobile",
            targets: [
                "YandexMaps",
            ]
        ),
    ],
    targets: [
        .target(
            name: "YandexMaps",
            dependencies: [
                "YandexMapsMobile"
            ],
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedLibrary("resolv"),
            ]
        ),
//        .binaryTarget(
//            name: "YandexMapsMobile",
//            path: "YandexMapsMobile.xcframework"
//        )
        .binaryTarget(
            name: "YandexMapsMobile",
            url: "https://github.com/naithar/YandexMapsMobile-SPM/releases/download/4.9.1/YandexMapsMobile.xcframework.zip",
            checksum: "f50524ec0a45923a2a2353cde0307e38d0150342d5522061d728f1f205cae77a"
        ),
    ]
)
