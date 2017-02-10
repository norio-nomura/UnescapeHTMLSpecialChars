import PackageDescription

let package = Package(
    name: "UnescapeHTMLSpecialChars",
    targets: [
        Target(name: "UnescapeHTMLSpecialChars", dependencies: ["GoogleToolbox"])
    ]
)
