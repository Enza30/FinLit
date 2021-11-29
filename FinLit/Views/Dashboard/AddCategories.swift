//
//  AddCategories.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 28/11/21.
//

import SwiftUI

struct AddCategories: View {
    
    var categories: [Categories] = KindOfCategory.fourTeen
    @State var catChecked = false
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode)
    var presentationMode
    
    var body: some View {
        List { ForEach(categories, id: \.id) { category in
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
            }
            .listStyle(PlainListStyle())
        
    }
    }
}

struct AddCategories_Previews: PreviewProvider {
    static var previews: some View {
            AddCategories()
        
    }
}
