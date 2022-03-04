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
        .binaryTarget(
            name: "YandexMapsMobile",
            url: "https://github.com/naithar/YandexMapsMobile-SPM/releases/download/4.0.0/YandexMapsMobile.xcframework.zip",
            checksum: "d2f3a3d7b30998732cc1b31336c45eea6479ea75d56cbd151e8129f33bbfa697"
        ),
    ]
)
