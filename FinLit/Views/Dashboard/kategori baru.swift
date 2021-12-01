//
//  kategori baru.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 04/11/21.
//

import SwiftUI
import CoreData

struct kategori_baru: View {
    
    @State var category = [
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
    
    
//    let data : [kategori] = [kategori(id: 1, nama: Category.food.nameList, warna: "dasar", warna2: "warna4", image: Category.food.systemNameIcon),
//                             kategori(id: 2, nama: Category.drinks.nameList, warna: "dasar", warna2: "warna3", image: Category.drinks.systemNameIcon),
//                             kategori(id: 3, nama: Category.groceries.nameList, warna: "dasar", warna2: "warna2", image: Category.groceries.systemNameIcon),
//                             kategori(id: 4, nama: Category.transport.nameList, warna: "dasar", warna2: "warna2",image: Category.transport.systemNameIcon),
//                             kategori(id: 5, nama: Category.health.nameList, warna: "dasar", warna2: "warna2", image: Category.health.systemNameIcon),
//                             kategori(id: 6, nama: Category.rent.nameList, warna: "dasar", warna2: "warna2", image: Category.rent.systemNameIcon),
//                             kategori(id: 7, nama: Category.clothes.nameList, warna: "dasar", warna2: "warna2", image: Category.clothes.systemNameIcon),
//                             kategori(id: 8, nama: Category.travel.nameList, warna: "dasar", warna2: "warna2", image: Category.travel.systemNameIcon),
//                             kategori(id: 9, nama: Category.beauty.nameList, warna: "dasar", warna2: "warna2", image: Category.beauty.systemNameIcon),
//                             kategori(id: 10, nama: Category.phone.nameList, warna: "dasar", warna2: "warna2", image: Category.phone.systemNameIcon),
//                             kategori(id: 11, nama: Category.stationary.nameList, warna: "dasar", warna2: "warna2", image: Category.stationary.systemNameIcon),
//                             kategori(id: 12, nama: Category.snack.nameList, warna: "dasar", warna2: "warna2", image: Category.snack.systemNameIcon),
//                             kategori(id: 13, nama: Category.social.nameList, warna: "dasar", warna2: "warna2", image: Category.social.systemNameIcon)
//    ]
//
    
    
    var body: some View {
        ScrollView(.vertical){
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], alignment: .leading, spacing: 10){
                
                ForEach($category) {
                    category in
                    option(expenseCategories: category)
                }
            }
        }
    }
}

struct kategori_baru_Previews: PreviewProvider {
    static var previews: some View {
        kategori_baru()
    }
}
struct option : View{
    
    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    @FetchRequest(
        entity: Expense.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Expense.date, ascending: true),
                          NSSortDescriptor(keyPath: \Expense.amount, ascending: true)
                         ]
    )
    var expense: FetchedResults<Expense>
    
    @Binding var expenseCategories: CategoryItem

    
    @State private var inputExpense = false
    // @ObservedObject var kata : GlobalObject
    
    @FetchRequest(
        entity: CategoriesDB.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \CategoriesDB.title, ascending: false)])
    var selectedCategory : FetchedResults<CategoriesDB>
    
    let data : kategori
    var body: some View{
        
        ZStack(alignment: .center){
     
          
        VStack{
            Spacer()
            Image(self.expenseCategories.title.rawValue)
                .resizable()
                .frame(width: 32, height: 36, alignment: .center)
                .foregroundColor(Color("ActionColor"))
                
            Text(self.expenseCategories.title.rawValue)
            
                .font(.system(size: 12))
                .foregroundColor(.secondary)
                .padding(.vertical, 2)
            Text("Rp. 0").font(.system(size: 14)).bold()
                .padding(.vertical, 3)
                Spacer()
            ForEach(expense) {expense in
                Text("\(expense.amountText)")
                    .font(.system(size: 14))
                    .bold()
                    .frame(width:100, alignment: .topLeading)
            }
        }.frame(width: 110, height: 125)
        //                .padding(.all, 7)
            .background(Color.white)
            .cornerRadius(7)
            .shadow(radius: 3, x: 1, y: 1)
            
            Button("                                                                                                                                         "){
                inputExpense.toggle()
                ()   }
            .sheet(isPresented: $inputExpense){
                let stack = PersistenceController()
                modalTry(context: stack.container.viewContext)
            }
            .padding(.all, 50)
        }
       
        
    }
    
}
