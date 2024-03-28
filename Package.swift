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
            url: "https://github.com/naithar/YandexMapsMobile-SPM/releases/download/4.5.1/YandexMapsMobile.xcframework.zip",
            checksum: "be224fbacfd658195746e07687aaf222a12b2f731bcbe520a03aed669e16735d"
        ),
    ]
)
