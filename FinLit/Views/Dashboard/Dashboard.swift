//
//  Dashboard.swift
//  FinLit
//
//  Created by Farendza Muda on 04/11/21.
//

import SwiftUI
import CoreData

struct Dashboard: View {
    
    @Environment(\.managedObjectContext) var context
    @FetchRequest(
        entity: Income.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Income.date, ascending: true)]
    )  var incomes: FetchedResults<Income>
    
    @FetchRequest(
        entity: Expense.entity(),
        sortDescriptors: []
    )
    var expense : FetchedResults<Expense>
    
    @State var isAddIncomePresented : Bool = false
    //@State var isAddCategory : Bool = false
    
    
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                
                ZStack{
                    Color.white
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack(alignment: .leading){
                        HStack{
                            Spacer()
                            VStack{
                                
                                Text("August 2022")
                                    .font(.system(size: 14)).bold()
                                    .foregroundColor(Color.secondary)
                                
                                
                                Text("\(getCurrentMoney())")
                                    .font(.largeTitle).bold()
                                    .foregroundColor(Color("MainColor"))
                                
                                
                                
                            }
                            .padding(.all, 5)
                            Spacer()
                        }
                        
                        Spacer(minLength: 15)
                        HStack{
                            Spacer()
                            ZStack{
                                VStack(spacing: 0) {
                                    HStack {
                                        Text("Watch Out, You're overspending")
                                            .foregroundColor(.white)
                                    }
                                    .frame(height: 52)
                                    
                                    HStack{
                                        VStack (spacing: 0) {
                                            HStack {
                                                Spacer()
                                                Text("Expense Rate")
                                                    .font(.system(size: 14))
                                                    .bold()
                                                
                                                Spacer(minLength: 70)
                                                Text("Your Expense to Date")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(.secondary)
                                                
                                                Spacer()
                                            }
                                            ZStack {
                                                barLine()
                                                HStack(alignment: .bottom){
                                                    Rectangle()
                                                        .frame(width: 5, height: 42)
                                                    Text("15 Aug").font(.caption)
                                                        .foregroundColor(.black)
                                                        .cornerRadius(4)
                                                }
                                            }
                                            
                                        }
                                    }
                                    .frame(width: 347, height: 77)
                                    .background(.white)
                                    
                                    HStack(spacing: 0) {
                                        ZStack {
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .border(Color("garis"), width: 1)
                                            
                                            HStack {
                                                Spacer()
                                                VStack{
                                                    Text("Total Income")
                                                        .font(.system(size: 12))
                                                        .frame(width:100, alignment: .topLeading)
                                                        .foregroundColor(.secondary)
                                                    
                                                    Text("\(calculateIncomeValue())")
                                                            .font(.system(size: 14))
                                                            .bold()
                                                            .frame(width:100, alignment: .topLeading)
                                                    
                                                    
                                                }
                                                Spacer()
                                                Button(action: addIncomeTapped, label:{
                                                    Image(systemName: "plus.circle.fill")
                                                        .resizable()
                                                        .foregroundColor(Color("ActionColor"))
                                                        .frame(width: 24, height: 24)
                                                    
                                                })
                                                Spacer()
                                            }
                                            
                                        }
                                        
                                        
                                        //                                    .frame(width: 347, height: 77)
                                        //                                    .background(.white)
                                        
                                        
                                        ZStack {
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .border(Color("garis"), width: 1)
                                            
                                            VStack{
                                                Text("Total Expenses")
                                                    .font(.system(size: 12))
                                                    .frame(width:130, alignment: .topTrailing)
                                                    .foregroundColor(.secondary)
                                                
                                                    Text("\(calculateTotalExpense())")
                                                        .font(.system(size: 14)).bold()
                                                        .frame(width:130, alignment: .topTrailing)
                                                
                                            }
                                        }
                                    }
                                    
                                }.border(Color("garis"), width: 1)
                                
                            }.frame(width: 347, height: 185)
                                .background(Color("MainColor"))
                                .cornerRadius(10)
                                .shadow(radius: 5, x: 2, y: 3)
                                .shadow(color: Color.white, radius: 5, x: -2, y: -3)
                            
                            
                            //                        }
                            
                            
                            Spacer()
                        }
                        //                    .background(Color("MainColor"))
                        //                    .cornerRadius(15)
                        //                    .shadow( radius: 10, x: 6, y: 7)
                        Spacer(minLength: 30)
                        HStack{
                            Text("Today's Expense").font(.headline)
                            Spacer(minLength: 65)
                            
                            HStack {
                                Text("Rp.50.000")
                                    .font(.system(size: 24)).bold()
                                
                                    .foregroundColor(Color("MainColor"))
                            }
                            .frame(width: 150,alignment: .topTrailing)
                            Spacer(minLength: 10)
                        }
                        
                        Spacer(minLength: 20)
                        HStack{
                            Text("Categories").font(.headline)
                            
                            Spacer()
                            
                            Button(action: {}, label:{
                                NavigationLink(destination: inputCategory(context: self.context)) {
                                    Image(systemName: "plus.circle.fill")
                                        .resizable()
                                        .foregroundColor(Color("ActionColor"))
                                        .frame(width: 24, height: 24)
                                        .padding(.horizontal)
                                }
                                
                                
                            })
                            //                            Image(systemName: "plus.circle.fill")
                            //                                .resizable()
                            //                                .frame(width: 35, height: 35)
                            //                                .foregroundColor(Color("MainColor"))
                            //                                .padding(.horizontal)
                            
                        }
                        //
                        kategori_baru()
                        //
                        
                        
                        
                        
                        
                        //        }.background(Color("BgColor"))
                        //            .edgesIgnoringSafeArea(.all)
                        //            .navigationViewStyle(StackNavigationViewStyle())
                        //            .frame(alignment: .topTrailing)
                        
                    }.padding()
                }
            } .navigationTitle("Your Money")
                .fullScreenCover(isPresented: $isAddIncomePresented) {
                        addIncome(context: self.context)
                }
        }
    }
    func addIncomeTapped() {
        isAddIncomePresented = true
    }
    
    
    
    private func getTotalIncome() -> Double {
        
        var value = Double(0)
        for i in incomes {
            
            value += i.amount as! Double
            
        }
        return value
    }
    func calculateIncomeValue() -> String {
        
        let totalIncome = getTotalIncome()
        
        convertDoubletoCurrency(amount: totalIncome)
        
        return "\(convertDoubletoCurrency(amount: totalIncome))"
    
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
    
    func currentMoney() -> Double {
        let totalIncome = getTotalIncome()
        let totalExpense = getTotalExpense()
        var yourMoney : Double {
            totalIncome - totalExpense
        }
        
        return yourMoney
    }
    
    func getCurrentMoney() -> String{
        let totalMoney = currentMoney()
        convertDoubletoCurrency(amount: totalMoney)
        return "\(convertDoubletoCurrency(amount: totalMoney))"
    }
    
    
    
    private func convertDoubletoCurrency(amount: Double) -> String {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale.current
        numberFormatter.isLenient = true
        
        
        return numberFormatter.string(from: NSNumber(value:amount))!
    }
    

}



struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}



