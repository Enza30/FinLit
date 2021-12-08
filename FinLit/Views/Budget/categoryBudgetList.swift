//
//  categoryBudgetList.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 15/11/21.
//

import SwiftUI
import CoreData

struct categoryBudgetList: View {
    
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(
        entity: CategoriesDB.entity(),
        sortDescriptors: [])
    //predicate: NSPredicate(format: "name == %@", titleCategories ))
    var selectedCategory : FetchedResults<CategoriesDB>

    
    var body: some View {
        ScrollView {
            ForEach(selectedCategory) { (logCategory : CategoriesDB) in
                    HStack {
                        ZStack {
                            Image(logCategory.title ?? "")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 32, height: 32)
                                .padding(.horizontal, 5)
                                .foregroundColor(Color("ActionColor"))
                                .padding(.leading,10)
                        }
                        
                        VStack {
                            HStack(alignment:.bottom) {
                                Spacer()
                                Spacer()
                                Text(logCategory.title ?? "")
                                    .font(.system(size: 14)).bold()
                                    .frame(width: 70, height: 14, alignment: .topLeading)
                                
                                Spacer()
                                HStack {
                                    Spacer()
                                    HStack{
                                        Text("Rp.12.000.000")
                                            .font(.system(size: 12))
                                            .frame(width: 88, height: 14, alignment: .topTrailing)
                                        
                                        
                                    }
                                    .frame(width: 72, height: 14, alignment: .topTrailing)
                                    
                                    HStack {
                                        Text("of Rp.700.000")
                                            .font(.system(size: 12))
                                            .frame(width: 96, height: 14, alignment: .topTrailing)
                                            .foregroundStyle(.secondary)
                                        
                                    }
                                    .frame(width: 88, height: 14, alignment: .topTrailing)
                                    Spacer(minLength: 10)
                                    
                                }
                                .frame(width: 244, height: 14)
                            }
                            HStack {
                                barBudget()
                                Spacer(minLength: 23)
                            }
                            .frame(width: 280, height: 13)
                        }
                        
                        
                    }
                    .frame(height: 60)
                    .padding()
                    .edgesIgnoringSafeArea(.all)
                    .background(Color.white)
                    
                    Divider()
            }
                
            }
            .frame( height: 500, alignment: .top)
        
    }
}

struct categoryBudgetList_Previews: PreviewProvider {
    static var previews: some View {
        categoryBudgetList()
    }
}

struct barBudget: View{
    @State var currentProgress: CGFloat = 155.0
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .foregroundColor(Color("passiveBar"))
                .frame(width: 280, height: 14)
            
            Rectangle()
                .foregroundColor(Color("MainColor"))
                .frame(width: currentProgress, height: 14)
        }
    }
}


