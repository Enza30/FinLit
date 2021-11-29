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
        Utils.dateFormatter.localizedString(for: date ?? Date(), relativeTo: Date())
    }
    
}
