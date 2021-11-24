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
    
    var nameList: String {
        switch self {
        case .travel: return "Travel"
        case .groceries: return "Groceries"
        case .snack: return "Snack"
        case .stationary: return "Stationary"
        case .phone: return "Phone"
        case .social: return "Social"
        case .rent: return "Rent"
        case .food: return "Food"
        case .beauty: return "Beauty"
        case .health: return "Health"
        case .drinks: return "Drink"
        case .transport: return "Transport"
        case .clothes: return "Clothes"
        case .others: return "Others"
        }
    }
    
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
        case .others: return "tag.fill"
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

extension Category: Identifiable{
    var id: String { rawValue }
}







let CATEGORY_LIST_TRAVEL = "travel"
let CATEGORY_LIST_GROCERIES = "groceries"
let CATEGORY_LIST_SNACK = "snack"
let CATEGORY_LIST_STATIONARY = "stationary"
let CATEGORY_LIST_PHONE = "phone"
let CATEGORY_LIST_SOCIAL = "social"
let CATEGORY_LIST_RENT = "rent"
let CATEGORY_LIST_FOOD = "food"
let CATEGORY_LIST_BEAUTY = "beauty"
let CATEGORY_LIST_HEALTH = "health"
let CATEGORY_LIST_DRINKS = "drinks"
let CATEGORY_LIST_TRANSPORT = "transport"
let CATEGORY_LIST_CLOTHES = "clothes"
let CATEGORY_LIST_OTHERS = "others"

func getCatListIcon(catList: String) -> String {
    switch catList{
    case CATEGORY_LIST_TRAVEL: return "category_list_travel"
    case CATEGORY_LIST_GROCERIES: return "category_list_groceries"
    case CATEGORY_LIST_SNACK: return "category_list_snack"
    case CATEGORY_LIST_STATIONARY: return "category_list_stationary"
    case CATEGORY_LIST_PHONE: return "category_list_phone"
    case CATEGORY_LIST_SOCIAL: return "category_list_social"
    case CATEGORY_LIST_RENT: return "category_list_rent"
    case CATEGORY_LIST_FOOD: return "category_list_food"
    case CATEGORY_LIST_BEAUTY: return "category_list_beauty"
    case CATEGORY_LIST_HEALTH: return "category_list_health"
    case CATEGORY_LIST_DRINKS: return "category_list_drinks"
    case CATEGORY_LIST_TRANSPORT: return "category_list_transport"
    case CATEGORY_LIST_CLOTHES: return "category_list_clothes"
    default: return "category_list_others"
    }
}

func getCatListName(catList: String) -> String {
    switch catList{
    case CATEGORY_LIST_TRAVEL: return "Travel"
    case CATEGORY_LIST_GROCERIES: return "Groceries"
    case CATEGORY_LIST_SNACK: return "Snack"
    case CATEGORY_LIST_STATIONARY: return "Stationary"
    case CATEGORY_LIST_PHONE: return "Phone"
    case CATEGORY_LIST_SOCIAL: return "Social"
    case CATEGORY_LIST_RENT: return "Rent"
    case CATEGORY_LIST_FOOD: return "Food"
    case CATEGORY_LIST_BEAUTY: return "Beauty"
    case CATEGORY_LIST_HEALTH: return "Health"
    case CATEGORY_LIST_DRINKS: return "Drinks"
    case CATEGORY_LIST_TRANSPORT: return "Transport"
    case CATEGORY_LIST_CLOTHES: return "Clothes"
    case CATEGORY_LIST_OTHERS: return "Others"
    default: return "Unknown"
    }
}


