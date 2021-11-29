//
//  EditBudget.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 29/11/21.
//

import SwiftUI

struct EditBudget: View {
    
    @State var category  = [
        CategoryEditBudget(image: "beauty", title: "Beauty", amount: "Rp. 1.000.000"),
        
        CategoryEditBudget(image: "clothes", title: "Clothes", amount: "Rp. 0"),
        
        CategoryEditBudget(image: "drink", title: "Drink", amount: "Rp. 0"),
        
        CategoryEditBudget(image: "food", title: "Food", amount: "Rp. 0"),
        
        CategoryEditBudget(image: "groceries", title: "Groceries", amount: "Rp. 0"),
        
        CategoryEditBudget(image: "health", title: "Health", amount: "Rp. 0"),
        
        CategoryEditBudget(image: "phone", title: "Phone", amount: "Rp. 0"),
        
        CategoryEditBudget(image: "rent", title: "Rent", amount: "Rp. 0"),
        
        CategoryEditBudget(image: "snacks", title: "Snacks", amount: "Rp. 0"),
        
        CategoryEditBudget(image: "social", title: "Social", amount: "Rp. 0"),
        
        CategoryEditBudget(image: "stationery", title: "Stationary", amount: "Rp. 0"),
        
        CategoryEditBudget(image: "transport", title: "Transport", amount: "Rp. 0"),
        
        CategoryEditBudget(image: "travel", title: "Travel", amount: "Rp. 0")
    ]
    
    var body: some View {
        List {
            ScrollView{ ForEach(category){ editcategory in
                EditBudgetview(isEditBudget: editcategory)
            }
                
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct EditBudget_Previews: PreviewProvider {
    static var previews: some View {
        EditBudget()
    }
}


struct EditBudgetview : View {
    
    @State var isEditBudget: CategoryEditBudget
    
    var body: some View {
        HStack(spacing:10) {
            
            Image(isEditBudget.image)
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
                .frame(width:32, height: 36)
                .padding(.horizontal,2)
            
            
            
            Text(isEditBudget.title)
                .font(.system(size: 14)).bold()
                .padding(.horizontal)
            
            Spacer(minLength: 20)
            
            Text(isEditBudget.amount)
                .font(.system(size: 14))
                .foregroundColor(.secondary)
                .frame(width: 100, height: 16, alignment: .topTrailing)
        }
        .frame(height: 64)
        .padding()
    }
}

struct CategoryEditBudget: Identifiable {
    var id = UUID().uuidString
    var image: String
    var title: String
    var amount: String
}
