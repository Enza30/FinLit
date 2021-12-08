//
//  EditBudget.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 29/11/21.
//

import SwiftUI
import CoreData

struct EditBudget: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(
        entity: CategoriesDB.entity(),
        sortDescriptors: [])
    //predicate: NSPredicate(format: "name == %@", titleCategories ))
    var selectedCategory : FetchedResults<CategoriesDB>
    
    var body: some View {
            ScrollView{
                ForEach(selectedCategory){ (logCategory: CategoriesDB) in
                    
                    HStack(spacing:10) {
                        
                        Image(logCategory.title ?? "")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.orange)
                            .frame(width:32, height: 36)
                            .padding(.horizontal,2)
                        
                        
                        
                        Text(logCategory.title ?? "")
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
                    
                    Divider()
            }
                
            }
            .navigationBarTitle("Edit Budget")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(false)

    }
}

struct EditBudget_Previews: PreviewProvider {
    static var previews: some View {
        EditBudget()
    }
}
