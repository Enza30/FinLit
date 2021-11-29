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
    var isChecked: Bool
    
    
}

struct KindOfCategory {
    
    static var fourTeen = [
        Categories(imageName: "beauty", title: "Beauty", isChecked: false),
        
        Categories(imageName: "clothes", title: "Clothes", isChecked: false),
        
        Categories(imageName: "drink", title: "Drink", isChecked: false),
        
        Categories(imageName: "food", title: "Food", isChecked: false),
        
        Categories(imageName: "groceries", title: "Groceries", isChecked: false),
        
        Categories(imageName: "health", title: "Health", isChecked: false),
        
        Categories(imageName: "phone", title: "Phone", isChecked: false),
        
        Categories(imageName: "rent", title: "Rent", isChecked: false),
        
        Categories(imageName: "snacks", title: "Snacks", isChecked: false),
        
        Categories(imageName: "social", title: "Social", isChecked: false),
        
        Categories(imageName: "stationery", title: "Stationary", isChecked: false),
        
        Categories(imageName: "transport", title: "Transport", isChecked: false),
        
        Categories(imageName: "travel", title: "Travel", isChecked: false),
    ]
    
    let data : [Categories] = [Categories(imageName: "beauty", title: "Beauty", isChecked: false)]
}


