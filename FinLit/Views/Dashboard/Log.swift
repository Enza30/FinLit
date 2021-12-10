//
//  Log.swift
//  FinLit
//
//  Created by Farendza Muda on 29/11/21.
//

import Foundation
import CoreData

extension Income{
    var dateText: String {
        Utils.dateFormatter.string(from: Date())
    }
    
    var amountText: String {
        Utils.numberFormatter.string(from: NSNumber(value: amount?.doubleValue ?? 0)) ?? ""
    }
    
}
extension Expense{
    
    var amountText: String {
        Utils.numberFormatter.string(from: NSNumber(value: amount?.doubleValue ?? 0)) ?? ""
    }
    
    var dateText: String {
        Utils.dateFormatter.string(from: Date())
    }
    
    var nameText: String {
        categoryExpense ?? ""
    }
    
}
