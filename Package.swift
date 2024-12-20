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
            url: "https://github.com/naithar/YandexMapsMobile-SPM/releases/download/4.9.0/YandexMapsMobile.xcframework.zip",
            checksum: "10dc4547caf70dbfd02f44cf8094d904365e77a30336400624dd754c21908fef"
        ),
    ]
)
