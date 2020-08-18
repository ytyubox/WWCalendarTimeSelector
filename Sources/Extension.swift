//
//  Extension.swift
//  WWCalendarTimeSelector
//
//  Created by 游宗諭 on 2020/8/18.
//  Copyright © 2020 Wonder. All rights reserved.
//

import Foundation
import struct UIKit.CGFloat

 extension CGFloat {
    var doubleValue:      Double  { return Double(self) }
    var degreesToRadians: CGFloat { return CGFloat(doubleValue * .pi / 180) }
    var radiansToDegrees: CGFloat { return CGFloat(doubleValue * 180 / .pi) }
}

 extension Int {
    var doubleValue:      Double  { return Double(self) }
    var degreesToRadians: CGFloat { return CGFloat(doubleValue * .pi / 180) }
    var radiansToDegrees: CGFloat { return CGFloat(doubleValue * 180 / .pi) }
}
