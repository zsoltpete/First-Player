//
//  TapViewController.swift
//  First Player
//
//  Created by Zsolt Pete on 2018. 07. 22..
//  Copyright © 2018. Zsolt Pete. All rights reserved.
//

import UICircularProgressRing
import UIKit

class TapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

}

extension TapViewController: UIGestureRecognizerDelegate {

}

extension CGPoint {

    func pointAround(anotherPoint: CGPoint, with difference: CGFloat) -> Bool {

        let xAxis = anotherPoint.x - difference > self.x || anotherPoint.x + difference < self.x
        let yAxis = anotherPoint.y - difference > self.y || anotherPoint.y + difference < self.y

        if xAxis && yAxis {
            return true
        }

        return false

    }
}

struct Sides: OptionSet {
    let rawValue: Int

    static let left = Sides(rawValue: 1)
    static let right = Sides(rawValue: 2)

    static let both: Sides = [.left, .right]
    static let none: Sides = []
}
