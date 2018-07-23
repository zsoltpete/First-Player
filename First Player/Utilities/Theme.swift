//
//  Theme.swift
//  First Player
//
//  Created by Zsolt Pete on 2018. 07. 22..
//  Copyright © 2018. Zsolt Pete. All rights reserved.
//

import Foundation
import UIKit

class Theme {

    static let shared = Theme()

    private var colors: [UIColor] = []
    private var lightColors: [UIColor] = []

    static let blue = UIColor(named: "blue")!
    static let butter = UIColor(named: "butter")!
    static let claret = UIColor(named: "claret")!
    static let darkBlue = UIColor(named: "dark_blue")!
    static let green1 = UIColor(named: "green_1")!
    static let green2 = UIColor(named: "green_2")!
    static let yellow1 = UIColor(named: "yellow_1")!
    static let yellow2 = UIColor(named: "yellow_2")!

    private init() {

        self.colors.append(Theme.blue)
        self.colors.append(Theme.butter)
        self.colors.append(Theme.claret)
        self.colors.append(Theme.darkBlue)
        self.colors.append(Theme.green1)
        self.colors.append(Theme.green2)
        self.colors.append(Theme.yellow1)
        self.colors.append(Theme.yellow2)

        self.lightColors.append(Theme.butter)
        self.lightColors.append(Theme.green1)
        self.lightColors.append(Theme.green2)
        self.lightColors.append(Theme.yellow1)
        self.lightColors.append(Theme.yellow2)

    }

    func getColors() -> [UIColor] {
        return self.colors
    }

    func getLightColors() -> [UIColor] {
        return self.lightColors
    }


}
