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
            RedView()
                .tabItem{
                    Image(systemName: "phone.fill")
                    Text("Home")
                }
            
            BlueView()
                .tabItem{
                    Image(systemName: "tv.fill")
                    Text("Statistic")
                }
            
        }
    }
    struct RedView: View {
        var body: some View{
            Color.red
        }
    }
    struct BlueView: View{
        var body: some View {
            Color.blue
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
