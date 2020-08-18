//
//  WWCalendarTimeSelectorEnabledDateRange.swift
//  WWCalendarTimeSelector
//
//  Created by 游宗諭 on 2020/8/18.
//  Copyright © 2020 Wonder. All rights reserved.
//

import Foundation


public struct WWCalendarTimeSelectorEnabledDateRange {
    
    public static let past: WWCalendarTimeSelectorEnabledDateRange = {
        var dateRange = WWCalendarTimeSelectorEnabledDateRange()
        dateRange.end = Date().endOfDay
        return dateRange
    }()
    
    public static let future: WWCalendarTimeSelectorEnabledDateRange = {
        var dateRange = WWCalendarTimeSelectorEnabledDateRange()
        dateRange.start = Date().beginningOfDay
        return dateRange
    }()
    
    fileprivate(set) public var start: Date? = nil
    fileprivate(set) public var end: Date? = nil
    
    public mutating func setStartDate(_ date: Date?) {
        start = date
        if let endTmp = end, start?.compare(endTmp) == .orderedDescending {
            end = start
        }
    }
    
    public mutating func setEndDate(_ date: Date?) {
        end = date
        if let endTmp = end, start?.compare(endTmp) == .orderedDescending {
            start = end
        }
    }
}


public struct WWCalendarTimeSelectorDateRange {
    fileprivate(set) public var start: Date = Date().beginningOfDay
    fileprivate(set) public var end: Date = Date().beginningOfDay
    public var array: [Date] {
        var dates: [Date] = []
        var i = start.beginningOfDay
        let j = end.beginningOfDay
        while i.compare(j) != .orderedDescending {
            dates.append(i)
            i = i + 1.day
        }
        return dates
    }
    
    public mutating func setStartDate(_ date: Date) {
        start = date.beginningOfDay
        if start.compare(end) == .orderedDescending {
            end = start
        }
    }
    
    public mutating func setEndDate(_ date: Date) {
        end = date.beginningOfDay
        if start.compare(end) == .orderedDescending {
            start = end
        }
    }
}
