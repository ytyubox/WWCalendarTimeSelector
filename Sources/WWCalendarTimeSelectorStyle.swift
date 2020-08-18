//
//  WWCalendarTimeSelectorStyle.swift
//  WWCalendarTimeSelector
//
//  Created by 游宗諭 on 2020/8/18.
//  Copyright © 2020 Wonder. All rights reserved.
//

import Foundation


public struct WWCalendarTimeSelectorStyle {
    internal(set) public var showDateMonth: Bool = true
    internal(set) public var showMonth: Bool = false
    internal(set) public var showYear: Bool = true
    internal(set) public var showTime: Bool = true
    internal var isSingular = false
    
    public mutating func showDateMonth(_ show: Bool) {
        showDateMonth = show
        showMonth = show ? false : showMonth
        if show && isSingular {
            showMonth = false
            showYear = false
            showTime = false
        }
    }
    
    public mutating func showMonth(_ show: Bool) {
        showMonth = show
        showDateMonth = show ? false : showDateMonth
        if show && isSingular {
            showDateMonth = false
            showYear = false
            showTime = false
        }
    }
    
    public mutating func showYear(_ show: Bool) {
        showYear = show
        if show && isSingular {
            showDateMonth = false
            showMonth = false
            showTime = false
        }
    }
    
    public mutating func showTime(_ show: Bool) {
        showTime = show
        if show && isSingular {
            showDateMonth = false
            showMonth = false
            showYear = false
        }
    }
    
    internal func countComponents() -> Int {
        return (showDateMonth ? 1 : 0) +
            (showMonth ? 1 : 0) +
            (showYear ? 1 : 0) +
            (showTime ? 1 : 0)
    }
    
    
}
