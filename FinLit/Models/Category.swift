//
//  Category.swift
//  FinLit
//
//  Created by Farendza Muda on 13/11/21.
//

import Foundation
import SwiftUI
import Intents

enum Category: String, CaseIterable {
    
    case travel
    case groceries
    case snack
    case stationary
    case phone
    case social
    case rent
    case food
    case beauty
    case health
    case drinks
    case transport
    case clothes
    case others
    
    var systemNameIcon: String {
        switch self {
        case .travel: return "airplane"
        case .groceries: return "cart.fill"
        case .snack: return "takeoutbag.and.cup.and.straw.fill"
        case .stationary: return "pencil.slash"
        case .phone: return "phone.fill"
        case .social: return "person.3.fill"
        case .rent: return "house.fill"
        case .food: return "fork.knife"
        case .beauty: return "mouth.fill"
        case .health: return "cross.case.fill"
        case .drinks: return "cup.and.saucer.fill"
        case .transport: return "car.fill"
        case .clothes: return "tshirt.fill"
        case .others: return "list.bullet.circle.fill"
        }
    }
    
    var color: Color {
        switch self{
        case .travel: return Color("ActionColor")
        case .groceries: return Color("ActionColor")
        case .snack: return Color("ActionColor")
        case .stationary: return Color("ActionColor")
        case .phone: return Color("ActionColor")
        case .social: return Color("ActionColor")
        case .rent: return Color("ActionColor")
        case .food: return Color("ActionColor")
        case .beauty: return Color("ActionColor")
        case .health: return Color("ActionColor")
        case .drinks: return Color("ActionColor")
        case .transport: return Color("ActionColor")
        case .clothes: return Color("ActionColor")
        case .others: return Color("ActionColor")
        }
    }
    
}
