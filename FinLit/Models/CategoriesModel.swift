//
//  CategoriesModel.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 28/11/21.
//

import Foundation

struct Categories: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    var isChecked: Bool = false
    
    
}

struct KindOfCategory {
    
    static let fourTeen = [
        Categories(imageName: "beauty", title: "Beauty"),
        
        Categories(imageName: "clothes", title: "Clothes"),
        
        Categories(imageName: "drink", title: "Drink"),
        
        Categories(imageName: "food", title: "Food"),
        
        Categories(imageName: "groceries", title: "Groceries"),
        
        Categories(imageName: "health", title: "Health"),
        
        Categories(imageName: "phone", title: "Phone"),
        
        Categories(imageName: "rent", title: "Rent"),
        
        Categories(imageName: "snacks", title: "Snacks"),
        
        Categories(imageName: "social", title: "Social"),
        
        Categories(imageName: "stationery", title: "Stationary"),
        
        Categories(imageName: "transport", title: "Transport"),
        
        Categories(imageName: "travel", title: "Travel"),
    ]
    
    let data : [Categories] = [Categories(imageName: "beauty", title: "Beauty")]
}


