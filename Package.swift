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
            url: "https://github.com/naithar/YandexMapsMobile-SPM/releases/download/4.4.0/YandexMapsMobile.xcframework.zip",
            checksum: "ec6de86b0bca1c716f96082e290878564e9fe0a666460f9be6b37c660eb186a1"
        ),
    ]
)
