import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains DeeplinkApp App target and DeeplinkApp unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+
 
 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

let infoPlist: [String: InfoPlist.Value] = [
    "UILaunchScreen": [:],
    "CFBundleURLTypes": [
        [
            "CFBundleTypeRole":"Viewer",
            "CFBundleURLSchemes": [
                "ronline"
            ]
        ]
    ]
]

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(
    name: "Deeplinking",
    targets: [
        Target(
            name: "Deeplinking",
            platform: .iOS,
            product: .app,
            bundleId: "com.Veretennikov.SV",
            infoPlist: .extendingDefault(with: infoPlist),
            sources: [
                "Sources/**",
                "AppDelegate/**"
            ],
            resources: [
                "Resources/**"
            ],
            copyFiles: nil,
            headers: nil,
            entitlements: nil,
            scripts: [],
            dependencies: [],
            settings: nil,
            coreDataModels: [],
            environment: [:],
            launchArguments: [],
            additionalFiles: []
        )
    ]
)
