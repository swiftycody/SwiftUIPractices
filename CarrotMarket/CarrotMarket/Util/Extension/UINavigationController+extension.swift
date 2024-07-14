//
//  UINavigationController+extension.swift
//  CarrotMarket
//
//  Created by solgoon on 7/1/24.
//

import UIKit

// For SwipeBack Gesture
extension UINavigationController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
    }
}
