//
//  Utils.swift
//  FinLit
//
//  Created by Farendza Muda on 22/11/21.
//

import Foundation

struct Utils {
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.isLenient = true
        formatter.numberStyle = .currency
        return formatter
    }()
    
    static let dateFormatter: RelativeDateTimeFormatter = {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter
    }()
}

func getDateFormatter(date: Date?, format: String = "yyyy-MM-dd") -> String {
    guard let date = date else { return ""}
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    return dateFormatter.string(from: date)
}

//func getNumberFormatter(from num : NSNumber, number nstyle: NumberFormatter.Style) -> String {
//    let formatter = NumberFormatter()
//    formatter.isLenient = true
//    formatter.numberStyle = .currency
//    return formatter
//}

extension Float {
    var formattedCurrencyText: String {
        return Utils.numberFormatter.string(from: NSNumber(value: self)) ?? "0"
    }
}
