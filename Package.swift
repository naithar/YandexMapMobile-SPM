// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "YandexMapsMobile",
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
            url: "https://github.com/naithar/YandexMapsMobile-SPM/releases/download/4.3.1/YandexMapsMobile.xcframework.zip",
            checksum: "592df4b1a6519b17d3c477497616cb300d3bedcc13cc34dc9e9d3ce11aa7ba25"
        ),
    ]
)
