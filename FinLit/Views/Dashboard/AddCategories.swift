//
//  AddCategories.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 28/11/21.
//

import SwiftUI
import CoreData

struct AddCategories: View {
    
    var context : NSManagedObjectContext
    @State var categories: [Categories] = KindOfCategory.fourTeen
    @State var catChecked = false
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode)
    var presentationMode
    
    var body: some View {
        ScrollView {
            ForEach(categories, id: \.id) { category in
                
                HStack(spacing:10) {
                    
                    Image(category.imageName)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.orange)
                        .frame(width:28, height: 28)
                        .padding(.horizontal, 5)
                    
                    
                    
                    Text(category.title)
                        .font(.system(size: 14)).bold()
                        .padding()
                    
                    Spacer(minLength: 135)
                    
                    Button(action: {withAnimation{catChecked.toggle()}}, label: {
                        ZStack{
                            Rectangle()
                                .stroke(catChecked ? Color.green: Color.gray, lineWidth: 1)
                                .frame(width: 25, height: 25)
                            
                            
                            Image(systemName : catChecked ? "checkmark.square.fill" : "")
                                .font(.system(size: 25))
                                .foregroundColor(Color.green)
                            
                            
                        }
                    })
                }.frame(height: 64)
                    .contentShape(Rectangle())
                    .padding(.horizontal)
            }
            .listStyle(PlainListStyle())
            
        }.navigationBarTitle("Add Category")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                    Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
                    HStack{
                            Image(systemName: "chevron.backward")
                            Text("Back")
            }
        }))
        
    }
}

struct AddCategories_Previews: PreviewProvider {
    static var previews: some View {
        let stack = PersistenceController()
        return AddCategories(context: stack.container.viewContext)
        
    }
}
