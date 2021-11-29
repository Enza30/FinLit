//
//  CategoriesModel.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 28/11/21.
//

import Foundation

struct Categories: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var isChecked: String
    
    
}

struct KindOfCategory {
    
    static let fourTeen = [
        Categories(imageName: "beauty", title: "Beauty", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "clothes", title: "Clothes", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "drink", title: "Drink", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "food", title: "Food", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "groceries", title: "Groceries", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "health", title: "Health", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "phone", title: "Phone", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "rent", title: "Rent", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "snacks", title: "Snacks", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "social", title: "Social", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "stationery", title: "Stationary", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "transport", title: "Transport", isChecked: "checkmark.square.fill"),
        
        Categories(imageName: "travel", title: "Travel", isChecked: "checkmark.square.fill"),
    ]
    
    let data : [Categories] = [Categories(imageName: "beauty", title: "Beauty", isChecked: "checkmark.square.fill")]
}


