//
//  kategori baru.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 04/11/21.
//

import SwiftUI
import CoreData

struct kategori_baru: View {
    
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(
        entity: Expense.entity(),
        sortDescriptors: []
    )
    var expense : FetchedResults<Expense>
    
    @FetchRequest(
        entity: CategoriesDB.entity(),
        sortDescriptors: [])
    //predicate: NSPredicate(format: "name == %@", titleCategories ))
    var selectedCategory : FetchedResults<CategoriesDB>
    
    @State var isAddExpensePresented : Bool = false
    
    @State var choosenTitle : String?
    
    var body: some View {
        ScrollView(.vertical){
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], alignment: .leading, spacing: 10){
                ForEach(selectedCategory) { (logCategory : CategoriesDB) in
                    
                    Button(action: {
                        choosenTitle = logCategory.title!
                        addExpenseTapped()
                        
                    }) {
                        ZStack(alignment: .center){
                            VStack{
                                Spacer()
                                Image(logCategory.title ?? "")
                                    .resizable()
                                    .frame(width: 32, height: 36, alignment: .center)
                                    .foregroundColor(Color("ActionColor"))
                                
                                Text(logCategory.title ?? "")
                                
                                    .font(.system(size: 12))
                                    .foregroundColor(.secondary)
                                    .padding(.vertical, 2)
                                
                                ForEach(expense){ expense in
                                    Text("\(expense.amountText)")
                                        .font(.system(size: 14)).bold()
                                        .padding(.vertical, 3)
                                }
                                
                                Spacer()
                                
                            }
                            .frame(width: 110, height: 125)
                            .background(Color.white)
                            .cornerRadius(7)
                            .shadow(radius: 3, x: 1, y: 1)
                            
                        }
                    }
                }
                
                
            }
            .sheet(isPresented: $isAddExpensePresented) {
                addExpense(context: self.context, choosenTitle: choosenTitle ?? "nil")
                
            }
        }
    }
    
    func addExpenseTapped(){
        
        guard let choosenTitle = choosenTitle else {
            return
        }
        isAddExpensePresented = true
        print("Send \(choosenTitle)")
    }
    
}

struct kategori_baru_Previews: PreviewProvider {
    static var previews: some View {
        kategori_baru()
    }
}

    
    @State private var inputExpense = false
    // @ObservedObject var kata : GlobalObject
    
    @FetchRequest(
        entity: CategoriesDB.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \CategoriesDB.title, ascending: false)])
    var selectedCategory : FetchedResults<CategoriesDB>
    
    var body: some View{
        
        ZStack(alignment: .center){
     
          
        VStack{
            Spacer()
            Image(self.expenseCategories.title.rawValue)
                .resizable()
                .scaledToFit()
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
