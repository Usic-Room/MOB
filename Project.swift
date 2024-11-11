import ProjectDescription

let project = Project(
    name: "UsicRoom",
    targets: [
        .target(
            name: "UsicRoom",
            destinations: .iOS,
            product: .app,
            bundleId: "com.dude.UsicRoom",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                    "BASE_URL": "$(BASE_URL)",
                    "HOME_URL": "$(HOME_URL)",
                    "SEARCH_URL": "$(SEARCH_URL)",
                    "LIBRARY_URL": "$(LIBRARY_URL)",
                    "LOGIN_URL": "$(LOGIN_URL)",
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
            bundleId: "com.dude.UsicRoomTests",
            infoPlist: .extendingDefault(
                with: [
                    "BASE_URL": "$(BASE_URL)",
                    "HOME_URL": "$(HOME_URL)",
                    "SEARCH_URL": "$(SEARCH_URL)",
                    "LIBRARY_URL": "$(LIBRARY_URL)",
                    "LOGIN_URL": "$(LOGIN_URL)",
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
