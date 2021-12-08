//
//  categoryBudgetList.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 15/11/21.
//

import SwiftUI
import CoreData

struct categoryBudgetList: View {
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
            ScrollView {
                ForEach(category) { ctgBudgetList in
                RowOfBudgetList(isCategoryBudgetList: ctgBudgetList)
                    
                    Divider()
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
    
     var isCategoryBudgetList : CategoryItem
    
    var body: some View {
        HStack {
            ZStack {
                Image(isCategoryBudgetList.title.rawValue)
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
                    Text(isCategoryBudgetList.title.rawValue)
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

struct CategoryBudgetList : Identifiable {
    var id = UUID().uuidString
    var image: String
    var title: String
    var amount: Int
    var expense: Int
}
