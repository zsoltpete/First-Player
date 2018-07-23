//
//  Dot.swift
//  First Player
//
//  Created by Zsolt Pete on 2018. 07. 22..
//  Copyright © 2018. Zsolt Pete. All rights reserved.
//

import UICircularProgressRing
import UIKit

class Dot: UICircularProgressRing {

    private var color: UIColor? = .clear

    private var circle: UIView = UIView(frame: CGRect.zero)

    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: Constants.Dot.Radius * 3.1, height: Constants.Dot.Radius * 3.1))
        self.backgroundColor = .clear
        self.addSubViews()
        self.addColor()
        self.setStyle()

    }

    required init(coder aDecoder: NSCoder) {
        super.init(frame: CGRect(x: 0, y: 0, width: Constants.Dot.Radius * 2, height: Constants.Dot.Radius * 2))
        self.backgroundColor = .clear
        self.addColor()
    }

    func addSubViews() {
        self.circle = UIView(frame: CGRect(x: 0, y: 0, width: Constants.Dot.Radius * 2, height: Constants.Dot.Radius * 2))
        self.circle.center = self.center
        self.addSubview(self.circle)
    }

    func setStyle() {
        self.value = 0.0
        self.outerRingColor = UIColor.clear
        self.innerRingColor = self.color ?? .clear
        self.innerRingWidth = Constants.Dot.LineWidth
        self.shouldShowValueText = false
        self.startAngle = Constants.Dot.StartAngle
    }

    func addColor(color: UIColor? = nil) {
        self.layer.masksToBounds = true
        if color == nil {
            self.color = Randomizer().getColor()
        } else {
            self.color = color
        }
        self.circle.backgroundColor = self.color
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.cornerRadius = self.frame.height / 2.0
        self.circle.layer.cornerRadius = self.circle.frame.height / 2.0
    }

}
