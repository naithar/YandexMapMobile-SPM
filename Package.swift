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
            url: "https://github.com/naithar/YandexMapsMobile-SPM/releases/download/4.1.0/YandexMapsMobile.xcframework.zip",
            checksum: "ec932042e44c01d28ce432f80d895ea62e5fa8ec939f9048642df15218e07c32"
        ),
    ]
)
