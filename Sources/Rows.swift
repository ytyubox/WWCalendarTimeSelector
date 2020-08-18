//
//  Rows.swift
//  WWCalendarTimeSelector
//
//  Created by 游宗諭 on 2020/8/18.
//  Copyright © 2020 Wonder. All rights reserved.
//

import Foundation

enum Rows :String,CaseIterable {
    
    case  _00DateMonth =  "DateMonth"//0
    case  _01Month =  "Month"//1
    case  _02Year =  "Year"//2
    case  _03Time =  "Time"//3
    case  _04DateMonth_Year =  "DateMonth + Year"//4
    case  _05Month_Year =  "Month + Year"//5
    case  _06Year_Time =  "Year + Time"//6
    case  _07DateMonth_Time =  "DateMonth + Time"//7
    case  _08DateMonth_Year_Time =  "DateMonth + Year + Time"//8
    case  _09Month_Year_Time =  "Month + Year + Time"//9
    case  _10Multiple_Selection_Simple =  "Multiple Selection (Simple)"//10
    case  _11Multiple_SelectionPillZ =  "Multiple Selection (Pill)"//11
    case  _12Multiple_SelectionLinkedBallsZ =  "Multiple Selection (LinkedBalls)"//12
    case  _13Date_Year_Time_without_Top_Panel =  "Date + Year + Time (without Top Panel)"//13
    case  _14Date_Year_Time_without_Top_Container =  "Date + Year + Time (without Top Container)"//14
    case  _15Date_Range_Selection =  "Date Range Selection"//15
    
}

