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
            YellowView()
                .tabItem{
                    Image(systemName: "paperplane.fill")
                    Text("Evaluation")
                }
            GreenView()
                .tabItem{
                    Image(systemName: "book.fill")
                    Text("Education")
                }
            
        }
    }
    struct RedView: View {
        var body: some View{
            Color("warna")
        }
    }
    struct BlueView: View{
        var body: some View {
            Color.blue
        }
    }
    struct YellowView: View{
        var body: some View{
            Color.yellow
        }
    }
    struct GreenView: View{
        var body: some View{
            Color.green
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
