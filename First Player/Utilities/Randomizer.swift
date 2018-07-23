//
//  Randomizer.swift
//  First Player
//
//  Created by Zsolt Pete on 2018. 07. 22..
//  Copyright © 2018. Zsolt Pete. All rights reserved.
//

import Foundation
import UIKit

class Randomizer {

    init() {

    }

    func getColor() -> UIColor {

        let colors = Theme.shared.getLightColors()
        let index = Int(arc4random_uniform(UInt32(colors.count)))
        return colors[index]

    }

}
