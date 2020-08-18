//
//  Enums.swift
//  WWCalendarTimeSelector
//
//  Created by 游宗諭 on 2020/8/18.
//  Copyright © 2020 Wonder. All rights reserved.
//

/// Set `optionSelectionType` with one of the following:
///
/// `Single`: This will only allow the selection of a single date. If applicable, this also allows selection of year and time.
///
/// `Multiple`: This will allow the selection of multiple dates. This automatically ignores the attribute of `optionPickerStyle`, hence selection of multiple year and time is currently not available.
///
/// `Range`: This will allow the selection of a range of dates. This automatically ignores the attribute of `optionPickerStyle`, hence selection of multiple year and time is currently not available.
///
/// - Note:
/// Selection styles will only affect date selection. It is currently not possible to select multiple/range
public enum WWCalendarTimeSelectorSelection {
    /// Single Selection.
    case single
    /// Multiple Selection. Year and Time interface not available.
    case multiple
    /// Range Selection. Year and Time interface not available.
    case range
}

/// Set `optionMultipleSelectionGrouping` with one of the following:
///
/// `Simple`: No grouping for multiple selection. Selected dates are displayed as individual circles.
///
/// `Pill`: This is the default. Pill-like grouping where dates are grouped only if they are adjacent to each other (+- 1 day).
///
/// `LinkedBalls`: Smaller circular selection, with a bar connecting adjacent dates.
public enum WWCalendarTimeSelectorMultipleSelectionGrouping {
    /// Displayed as individual circular selection
    case simple
    /// Rounded rectangular grouping
    case pill
    /// Individual circular selection with a bar between adjacent dates
    case linkedBalls
}

/// Set `optionMultipleDateOutputFormat` with one of the following:
///
/// `English`: Displayed as "EEE', 'd' 'MMM' 'yyyy": for example, Tue, 17 Jul 2018
///
/// `Japanese`: "yyyy'年 'MMM' 'd'日 'EEE": for example, 2018年 7月 15日 日
public struct WWCalendarTimeSelectorMultipleDateOutputFormat{
    internal init(_ dateFormat: String) {
        self.dateFormat = dateFormat
    }
    
    /// English format
    static var english = WWCalendarTimeSelectorMultipleDateOutputFormat("EEE', 'd' 'MMM' 'yyyy")
    /// Japanese format
    static var japanese = WWCalendarTimeSelectorMultipleDateOutputFormat("yyyy'年 'MMM' 'd'日 'EEE")
    var dateFormat:String
}

/// Set `optionTimeStep` to customise the period of time which the users will be able to choose. The step will show the user the available minutes to select (with exception of `OneMinute` step, see *Note*).
///
/// - Note:
/// Setting `optionTimeStep` to `OneMinute` will show the clock face with minutes on intervals of 5 minutes.
/// In between the intervals will be empty space. Users will however be able to adjust the minute hand into the intervals of those 5 minutes.
///
/// - Note:
/// Setting `optionTimeStep` to `SixtyMinutes` will disable the minutes selection entirely.
public enum WWCalendarTimeSelectorTimeStep: Int {
    /// 1 Minute interval, but clock will display intervals of 5 minutes.
    case oneMinute = 1
    /// 5 Minutes interval.
    case fiveMinutes = 5
    /// 10 Minutes interval.
    case tenMinutes = 10
    /// 15 Minutes interval.
    case fifteenMinutes = 15
    /// 30 Minutes interval.
    case thirtyMinutes = 30
    /// Disables the selection of minutes.
    case sixtyMinutes = 60
}

internal enum WWCalendarRowType{
    case month, day, date
}
