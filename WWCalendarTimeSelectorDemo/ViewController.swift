//
//  ViewController.swift
//  WWCalendarTimeSelectorDemo
//
//  Created by Weilson Wonder on 21/4/16.
//  Copyright © 2016 Wonder. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, WWCalendarTimeSelectorProtocol {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var table: UITableView!
    
    fileprivate var singleDate: Date = Date()
    fileprivate var multipleDates: [Date] = []
    
    fileprivate let demo: [Rows] = Rows.allCases
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selector = UIStoryboard(name: "WWCalendarTimeSelector", bundle: nil).instantiateInitialViewController() as! WWCalendarTimeSelector
        selector.delegate = self
        selector.optionCurrentDate = singleDate
        selector.optionCurrentDates = Set(multipleDates)
        selector.optionCurrentDateRange.setStartDate(multipleDates.first ?? singleDate)
        selector.optionCurrentDateRange.setEndDate(multipleDates.last ?? singleDate)
        
        switch demo[indexPath.row] {
            case  ._00DateMonth:
                selector.optionStyles.showDateMonth(true)
                selector.optionStyles.showMonth(false)
                selector.optionStyles.showYear(false)
                selector.optionStyles.showTime(false)
            case  ._01Month:
                selector.optionStyles.showDateMonth(false)
                selector.optionStyles.showMonth(true)
                selector.optionStyles.showYear(false)
                selector.optionStyles.showTime(false)
            case  ._02Year:
                selector.optionStyles.showDateMonth(false)
                selector.optionStyles.showMonth(false)
                selector.optionStyles.showYear(true)
                selector.optionStyles.showTime(false)
            case  ._03Time:
                selector.optionStyles.showDateMonth(false)
                selector.optionStyles.showMonth(false)
                selector.optionStyles.showYear(false)
                selector.optionStyles.showTime(true)
            case  ._04DateMonth_Year:
                selector.optionStyles.showDateMonth(true)
                selector.optionStyles.showMonth(false)
                selector.optionStyles.showYear(true)
                selector.optionStyles.showTime(false)
            case  ._05Month_Year:
                selector.optionStyles.showDateMonth(false)
                selector.optionStyles.showMonth(true)
                selector.optionStyles.showYear(true)
                selector.optionStyles.showTime(false)
            case  ._06Year_Time:
                selector.optionStyles.showDateMonth(false)
                selector.optionStyles.showMonth(false)
                selector.optionStyles.showYear(true)
                selector.optionStyles.showTime(true)
            case  ._07DateMonth_Time:
                selector.optionStyles.showDateMonth(true)
                selector.optionStyles.showMonth(false)
                selector.optionStyles.showYear(false)
                selector.optionStyles.showTime(true)
            case  ._08DateMonth_Year_Time:
                break
            case  ._09Month_Year_Time:
                selector.optionStyles.showMonth(true)
            case  ._10Multiple_Selection_Simple:
                selector.optionSelectionType = WWCalendarTimeSelectorSelection.multiple
                selector.optionMultipleSelectionGrouping = .simple
            case  ._11Multiple_SelectionPillZ:
                selector.optionSelectionType = WWCalendarTimeSelectorSelection.multiple
                selector.optionMultipleSelectionGrouping = .pill
            case  ._12Multiple_SelectionLinkedBallsZ:
                selector.optionSelectionType = WWCalendarTimeSelectorSelection.multiple
                selector.optionMultipleSelectionGrouping = .linkedBalls
            case  ._13Date_Year_Time_without_Top_Panel:
                selector.optionShowTopPanel = false
            case  ._14Date_Year_Time_without_Top_Container:
                selector.optionShowTopContainer = false
                selector.optionLayoutHeight = 300
            case  ._15Date_Range_Selection:
                selector.optionShowTopContainer = false
                selector.optionLayoutHeight = 300
                selector.optionSelectionType = WWCalendarTimeSelectorSelection.range
        }
        
        present(selector, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demo.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
            assertionFailure("cell identifier 'cell' not found!")
            return UITableViewCell()
        }
        cell.textLabel?.text = demo[(indexPath as NSIndexPath).row].rawValue
        return cell
    }
    
    func WWCalendarTimeSelectorDone(_ selector: WWCalendarTimeSelector, date: Date) {
        print("Selected \n\(date)\n---")
        singleDate = date
        dateLabel.text = date.stringFromFormat("d' 'MMMM' 'yyyy', 'h':'mma")
    }
    
    func WWCalendarTimeSelectorDone(_ selector: WWCalendarTimeSelector, dates: [Date]) {
        print("Selected Multiple Dates \n\(dates)\n---")
        if let date = dates.first {
            singleDate = date
            dateLabel.text = date.stringFromFormat("d' 'MMMM' 'yyyy', 'h':'mma")
        }
        else {
            dateLabel.text = "No Date Selected"
        }
        multipleDates = dates
    }
}

