import ProjectDescription

let project = Project(
    name: "UsicRoom",
    targets: [
        .target(
            name: "UsicRoom",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.UsicRoom",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["UsicRoom/Sources/**"],
            resources: ["UsicRoom/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "UsicRoomTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.UsicRoomTests",
            infoPlist: .default,
            sources: ["UsicRoom/Tests/**"],
            resources: [],
            dependencies: [.target(name: "UsicRoom")]
        ),
    ]
)
