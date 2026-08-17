// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "AMADocScanneriOS",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AMADocScanneriOS",
            targets: ["AMADocScanneriOS"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "docscanner_ios",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/DocScannerIOS/DocScanner-5.0.2.xcframework.zip",
            checksum: "6e35417f1b903dad380f38577e019d041b30c7c054d6eae00bc123866a248640"
        ),
        .target(
            name: "AMADocScanneriOS",
            dependencies: ["docscanner_ios"],
            path: "Sources"
        )
    ]
)
