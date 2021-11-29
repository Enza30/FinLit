//
//  categoryBudgetList.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 15/11/21.
//

import SwiftUI
import CoreData

struct categoryBudgetList: View {
    @State var category = [
        CategoryBudgetList(image: "beauty", title: "Beauty", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "clothes", title: "Clothes", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "drink", title: "Drink", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "food", title: "Food", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "groceries", title: "Groceries", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "health", title: "Health", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "phone", title: "Phone", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "rent", title: "Rent", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "snacks", title: "Snacks", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "social", title: "Social", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "stationery", title: "Stationary", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "transport", title: "Transport", amount: 0, expense: 0),
        
        CategoryBudgetList(image: "travel", title: "Travel", amount: 0, expense: 0),
        
    ]
    
    var body: some View {
        List {
            ScrollView{ ForEach(category) { ctgBudgetList in
                RowOfBudgetList(isCategoryBudgetList: ctgBudgetList)
            }
                
            }
        } .listStyle(PlainListStyle())
        .frame( height: 500, alignment: .top)
        
    }
}

struct categoryBudgetList_Previews: PreviewProvider {
    static var previews: some View {
        categoryBudgetList()
    }
}

struct RowOfBudgetList : View {
    
    @State var isCategoryBudgetList : CategoryBudgetList
    
    var body: some View {
        HStack {
            ZStack {
                Image(isCategoryBudgetList.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.horizontal, 5)
                    .foregroundColor(Color("ActionColor"))
            }
            
            VStack {
                HStack(alignment:.bottom) {
                    Spacer()
                    Spacer()
                    Text(isCategoryBudgetList.title)
                        .font(.system(size: 14)).bold()
                        .frame(width: 57, height: 14, alignment: .topLeading)
                    
                    Spacer()
                    HStack {
                        Spacer()
                        Spacer()
                        HStack{
                            Text("Rp.500.000")
                                .font(.system(size: 12))
                            
                            
                        }
                        .frame(width: 72, height: 14, alignment: .topTrailing)
                        
                        HStack {
                            Text("of Rp.700.000")
                                .font(.system(size: 12))
                                .foregroundStyle(.secondary)
                            
                        }
                        .frame(width: 88, height: 14, alignment: .topTrailing)
                        Spacer(minLength: 10)
                        
                    }
                    .frame(width: 244, height: 14)
                }
                HStack {
                    barBudget()
                    Spacer()
                }
                .frame(width: 280, height: 13)
            }
            
            
        }
        .frame(height: 60)
        .padding()
        .edgesIgnoringSafeArea(.all)
        .background(Color.white)
    }
}

struct CategoryBudgetList : Identifiable {
    var id = UUID().uuidString
    var image: String
    var title: String
    var amount: Int
    var expense: Int
}
