import ProjectDescription
import ProjectDescriptionHelpers

let spm = SwiftPackageManagerDependencies(
    [
        .remote(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            requirement: .upToNextMajor(from: "0.45.0")
        ),
    ],
    baseSettings: .settings(
        base: [
            "APPLICATION_EXTENSION_API_ONLY": true
        ],
        configurations: [.debug(name: "Debug"), .release(name: "Release")]
    )
)

let dependencies = Dependencies(
    swiftPackageManager: spm,
    platforms: [.iOS]
)
