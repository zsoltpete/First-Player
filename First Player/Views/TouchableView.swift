//
//  TouchableView.swift
//  First Player
//
//  Created by Zsolt Pete on 2018. 07. 22..
//  Copyright © 2018. Zsolt Pete. All rights reserved.
//

import UICircularProgressRing
import UIKit

class TouchableView: UIView {
    var touchViews = [UITouch: Dot]()

    override init(frame: CGRect) {
        super.init(frame: frame)
        isMultipleTouchEnabled = true
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isMultipleTouchEnabled = true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            createViewForTouch(touch: touch)
        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let view = viewForTouch(touch: touch)
            // Move the view to the new location.
            let newLocation = touch.location(in: self)
            view?.center = newLocation
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            removeViewForTouch(touch: touch)
        }
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            removeViewForTouch(touch: touch)
        }
    }

    func createViewForTouch( touch: UITouch ) {
        let newView = Dot()
        newView.center = touch.location(in: self)

        // Add the view and animate it to a new size.
        addSubview(newView)
        self.perform(#selector(animate(_:)), with: newView, afterDelay: 0.2)
        // Save the views internally
        touchViews[touch] = newView
    }

    @objc
    func animate(_ sender: Any?) {
        guard let pr = sender as? UICircularProgressRing else {
            return
        }
        pr.startProgress(to: 100.0, duration: 4.0) {
            print("Finished")
        }
    }

    func viewForTouch (touch: UITouch) -> Dot? {
        return touchViews[touch]
    }

    func removeViewForTouch (touch: UITouch ) {
        if let view = touchViews[touch] {
            view.removeFromSuperview()
            touchViews.removeValue(forKey: touch)
        }
    }

    /**
     Checks all dots in array
     -returns: True if new location around an another Dot
     */
    func checkDotsPosition(newPosition: CGPoint, with difference: CGFloat) -> Int {
        var aroundDotIndex = -1
        var index = 0
        self.touchViews.forEach { dot in
            if dot.value.center.pointAround(anotherPoint: newPosition, with: difference) {
                aroundDotIndex = index
            }
            index += 1
        }
        return aroundDotIndex
    }
}
