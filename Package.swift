// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "leetcode-swift",
    products: [
        .library(name: "LeetCode", targets: ["LeetCode"]),
    ],
    targets: [
        .target(name: "LeetCode", dependencies: []),
        .testTarget(name: "LeetCodeTests", dependencies: ["LeetCode"]),
    ]
)
