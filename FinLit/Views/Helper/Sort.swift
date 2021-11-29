//
//  Sort.swift
//  FinLit
//
//  Created by Farendza Muda on 29/11/21.
//

import Foundation

enum SortType: String, CaseIterable {
    case date
    case amount
}

enum SortOrder: String, CaseIterable {
    case ascending
    case descending
}

extension SortType: Identifiable {
    var id: String { rawValue }
}

extension SortOrder: Identifiable {
    var id: String { rawValue }
}


struct ExpenseLogSort {
    var sortType: SortType
    var sortOrder: SortOrder
    
    var isAscending: Bool {
        sortOrder == .ascending ? true : false
    }
    
    var sortDescriptor: NSSortDescriptor {
        switch sortType {
        case .date:
            return NSSortDescriptor(keyPath: \Expense.date, ascending: isAscending)
        case .amount:
            return NSSortDescriptor(keyPath: \Expense.amount, ascending: isAscending)
        }
    }
}

struct IncomeLogSort {
    var sortType: SortType
    var sortOrder: SortOrder
    
    var isAscending: Bool {
        sortOrder == .ascending ? true : false
    }
    
    var sortDescriptor: NSSortDescriptor {
        switch sortType {
        case .date:
            return NSSortDescriptor(keyPath: \Income.date, ascending: isAscending)
        case .amount:
            return NSSortDescriptor(keyPath: \Income.amount, ascending: isAscending)
        }
    }
}
