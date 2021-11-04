//
//  ContentView.swift
//  FinLit
//
//  Created by Farendza Muda on 01/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Dashboard()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Dashboard")
                }
            
            Budget()
                .tabItem{
                    Image(systemName: "banknote.fill")
                    Text("Budget")
                }
            
            Evaluation()
                .tabItem{
                    Image(systemName: "chart.bar.fill")
                    Text("Evaluation")
                }
            
            Education()
                .tabItem{
                    Image(systemName: "book.closed.fill")
                    Text("Education")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
