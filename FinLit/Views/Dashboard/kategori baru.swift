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
        entity: CategoriesDB.entity(),
        sortDescriptors: [])
    //predicate: NSPredicate(format: "name == %@", titleCategories ))
    var selectedCategory : FetchedResults<CategoriesDB>
    
    @State var isAddExpensePresented : Bool = false
    
    @State var choosenTitle : String?
    
    @FetchRequest(
        entity: Expense.entity(),
        sortDescriptors: []
    )
    var expense : FetchedResults<Expense>
    
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
                                    .scaledToFit()
                                    .frame(width: 32, height: 36, alignment: .center)
                                    .foregroundColor(Color("ActionColor"))
                                
                                Text(logCategory.title ?? "")
                                
                                    .font(.system(size: 12))
                                    .foregroundColor(.secondary)
                                    .padding(.vertical, 2)
                                
                                
                                    Text("\(calculateTotalExpense())")
                                        .font(.system(size: 14)).bold()
                                        .padding(.vertical, 3)
                                
                                
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
                addExpense(context: self.context, choosenTitle: self.$choosenTitle)
                
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
    private func getTotalExpense() -> Double {
        
        var value = Double(0)
        for i in expense{
            value += i.amount as! Double
        }
        return value
    }
    func calculateTotalExpense() -> String {
        let totalExpense = getTotalExpense()
        convertDoubletoCurrency(amount: totalExpense)
        return "\(convertDoubletoCurrency(amount: totalExpense))"
    }
    private func convertDoubletoCurrency(amount: Double) -> String {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale.current
        numberFormatter.isLenient = true
        
        
        return numberFormatter.string(from: NSNumber(value:amount))!
    }
    
}

struct kategori_baru_Previews: PreviewProvider {
    static var previews: some View {
        kategori_baru()
    }
}

