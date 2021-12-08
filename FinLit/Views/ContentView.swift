//
//  ContentView.swift
//  FinLit
//
//  Created by Farendza Muda on 01/11/21.
//

import SwiftUI

struct ContentView: View {
    
//    init(){
//        UITabBar.appearance().backgroundColor = UIColor("")
//    }
    let sortDescriptor = IncomeLogSort(sortType: .date, sortOrder: .descending).sortDescriptor
    
    var body: some View {
        TabView {
            Dashboard()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Your Money")
                }

            Evaluation()
                .tabItem{
                    Image(systemName: "chart.bar.fill")
                    Text("History")
                }
            
            BudgetView()
                .tabItem{
                    Image(systemName: "banknote.fill")
                    Text("Budget")
                }

            
        }
        .accentColor(Color("MainColor"))
    }
}




//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
