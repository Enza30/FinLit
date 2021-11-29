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
    
    var body: some View {
        TabView {
            Dashboard()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Your Money")
                }

            BudgetView()
                .tabItem{
                    Image(systemName: "banknote.fill")
                    Text("Budget")
                }

            Evaluation()
                .tabItem{
                    Image(systemName: "chart.bar.fill")
                    Text("History")
                }
        }
        .accentColor(Color("ActionColor"))
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
