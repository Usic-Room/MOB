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
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                    "BASE_URL": "$(BASE_URL)",
                ]
            ),
            sources: ["UsicRoom/**/*.swift"],
            resources: ["UsicRoom/Resources/**"],
            dependencies: [
                .external(name: "ComposableArchitecture")
            ],
            settings: Settings.settings(
                base: [
                "DEVELOPMENT_TEAM": "$(DEVELOPMENT_TEAM)"
                ],
                configurations: [
                    .debug(name: "Debug", xcconfig: .relativeToRoot("Configs/Debug.xcconfig")),
                    .release(name: "Release", xcconfig: .relativeToRoot("Configs/Release.xcconfig"))
                ],
                defaultSettings: .recommended
            )
        ),
        .target(
            name: "UsicRoomTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.UsicRoomTests",
            infoPlist: .extendingDefault(
                with: [
                    "BASE_URL": "$(BASE_URL)",
                ]
            ),
            sources: ["UsicRoomTests/**"],
            resources: [],
            dependencies: [
                .target(name: "UsicRoom"),
                .external(name: "ComposableArchitecture")
            ],
            settings: Settings.settings(
                base: [
                "DEVELOPMENT_TEAM": "$(DEVELOPMENT_TEAM)"
                ],
                configurations: [
                    .debug(name: "Debug", xcconfig: .relativeToRoot("Configs/Debug.xcconfig")),
                    .release(name: "Release", xcconfig: .relativeToRoot("Configs/Release.xcconfig"))
                ],
                defaultSettings: .recommended
            )
        ),
    ]
)
