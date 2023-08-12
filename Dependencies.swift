//
//  Dependencies.swift
//  Deeplinking
//
//  Created by VERETENNIKOV Sergey on 12.08.2023.
//

import ProjectDescription

let dependencies = Dependencies(
    carthage: [
        .github(path: "Alamofire/Alamofire", requirement: .exact("5.0.4")),
    ],
    swiftPackageManager: [
        .remote(url: "https://github.com/Alamofire/Alamofire", requirement: .upToNextMajor(from: "5.0.0")),
    ],
    platforms: [.iOS]
)
