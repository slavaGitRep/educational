//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by viacheslav on 06.06.2023.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM. yyyy"
        dateFormatter.locale = Locale(identifier: "en_US")
        return dateFormatter.string(from: self)
    } 
}


