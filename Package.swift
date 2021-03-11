// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "leetcode-swift",
    products: [
        .library(name: "LeetCode", targets: ["LeetCode"]),
        .library(name: "Offer", targets: ["Offer"]),
    ],
    targets: [
        .target(name: "LeetCode", dependencies: ["Support"]),
        .testTarget(name: "LeetCodeTests", dependencies: ["LeetCode"]),
        .target(name: "Support", dependencies: []),
        .target(name: "Offer", dependencies: []),
        .testTarget(name: "OfferTests", dependencies: ["Offer"]),
    ]
)
