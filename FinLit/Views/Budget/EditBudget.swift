//
//  EditBudget.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 29/11/21.
//

import SwiftUI
import CoreData

struct EditBudget: View {
    
    var context : NSManagedObjectContext
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) private var viewContext
    
     var category = [
        CategoryItem(title: .Beauty, isChecked: false),
        
        CategoryItem(title: .Clothes, isChecked: false),
        
        CategoryItem(title: .Drink, isChecked: false),
        
        CategoryItem(title: .Food, isChecked: false),
        
        CategoryItem(title: .Groceries, isChecked: false),
        
        CategoryItem(title: .Health, isChecked: false),
        
        CategoryItem(title: .Phone, isChecked: false),
        
        CategoryItem(title: .Rent, isChecked: false),
        
        CategoryItem(title: .Snacks, isChecked: false),
        
        CategoryItem(title: .Social, isChecked: false),
        
        CategoryItem(title: .Stationary, isChecked: false),
        
        CategoryItem(title: .Transport, isChecked: false),
        
        CategoryItem(title: .Travel, isChecked: false)
    ]
    
    var body: some View {
        List {
            ScrollView{
                ForEach(category){ editcategory in
                EditBudgetview(isEditBudget: editcategory)
            }
                
            }
            .navigationBarTitle("Edit Budget")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(false)
        }
        .listStyle(PlainListStyle())
    }
}

struct EditBudget_Previews: PreviewProvider {
    static var previews: some View {
        let stack = PersistenceController()
        return EditBudget(context: stack.container.viewContext)
    }
}


struct EditBudgetview : View {
    
    var isEditBudget: CategoryItem
    
    var body: some View {
        HStack(spacing:10) {
            
            Image(isEditBudget.title.rawValue)
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
                .frame(width:32, height: 36)
                .padding(.horizontal,2)
            
            
            
            Text(isEditBudget.title.rawValue)
                .font(.system(size: 14)).bold()
                .padding(.horizontal)
            
            Spacer(minLength: 20)
            
            Text("Rp. 0")
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
