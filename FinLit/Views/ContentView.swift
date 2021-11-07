//
//  ContentView.swift
//  FinLit
//
//  Created by Farendza Muda on 01/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0
    @State var shouldShowModel = false
    
    let tabBarImages = ["house.fill","banknote.fill","plus.app.fill","chart.bar.fill","book.closed.fill"]
    
    var body: some View {
        VStack(spacing: 0){
            ZStack{
                
                Spacer()
                    .fullScreenCover(isPresented: $shouldShowModel, content: {
                        Button(action: {shouldShowModel.toggle()}, label: {
                            Text("Ini Input Expense Page")
                        })
                    })
                
                switch selectedIndex{
                case 1 :
                    Budget()
                case 3:
                    Evaluation()
                case 4:
                    Education()
                default:
                    Dashboard()
                }
            }
            Divider()
                .padding(.bottom, 8)
            HStack{
                ForEach(0..<5) { num in
                    Button(action:{
                        if num == 2 {
                            shouldShowModel.toggle()
                            return
                        }
                        selectedIndex = num
                    }, label: {
                        Spacer()
                        
                        if num == 2 {
                            Image(systemName: tabBarImages[num])
                                .font(.system(size: 44, weight: .bold))
                                .foregroundColor(.red)
                        } else {
                            Image(systemName: tabBarImages[num])
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: 0.8))
                        }
                        
                        Spacer()
                    })
                    
                }
            }
        }
    }
}

//TabView {
//    Dashboard()
//        .tabItem{
//            Image(systemName: "house.fill")
//            Text("Dashboard")
//        }
//
//    Budget()
//        .tabItem{
//            Image(systemName: "banknote.fill")
//            Text("Budget")
//        }
//
//    Evaluation()
//        .tabItem{
//            Image(systemName: "chart.bar.fill")
//            Text("Evaluation")
//        }
//
//    Education()
//        .tabItem{
//            Image(systemName: "book.closed.fill")
//            Text("Education")
//        }
//
//}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
