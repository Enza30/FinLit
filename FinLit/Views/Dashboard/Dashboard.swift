//
//  Dashboard.swift
//  FinLit
//
//  Created by Farendza Muda on 04/11/21.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        //NavigationView{
        ZStack{
            Color("BgColor")
                .edgesIgnoringSafeArea(.all
                )
        
            VStack(alignment: .leading){
                HStack(alignment: .bottom){
                    VStack(alignment: .leading){
                        Text("Dashboard").font(.title).bold()
                            .foregroundColor(Color.white)
                        Text("Hi, Alif").font(.headline)
                            .foregroundColor(Color.white)
                        Text("Today's Balance").font(.headline)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                    Text("Rp. 90,000").font(.headline).bold()
                        .foregroundColor(Color.white)
                    
                } .frame( height: 100)
                    .padding()
                    .edgesIgnoringSafeArea(.all)
                    .background(Color("MainColor"))
                    .cornerRadius(15)
                Spacer(minLength: 10)
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text("Total Balance").font(.callout)
                            .padding(.bottom, 5)
                       
                        Text("Rp. 2,000,000").font(.callout).bold()
                        
                    }.padding(.horizontal, 33)
                        .padding(.vertical, 15)
                        .background(Color.white)
                        .cornerRadius(7)
                        .shadow( radius: 4, x: 1, y: 1)
                   
                    VStack{
                        Text("Total Expense").font(.callout)
                            .padding(.bottom, 5)
                        
                        
                        Text("Rp. 1,000,000").font(.callout).bold()
                    }.padding(.horizontal, 33)
                        .padding(.vertical, 15)
                        .background(Color.white)
                        .cornerRadius(7)
                        .shadow( radius: 4, x: 1, y: 1)
                }
                Spacer(minLength: 15)
                ZStack{
                barLine()
                    HStack(alignment: .top){
                    Rectangle()
                        .frame(width: 7, height: 30)
                        Text("15 Aug").font(.caption)
                            .foregroundColor(.white)
                            .background(.black)
                    }
                }
                Spacer()
                Text("Daily Expense").font(.headline)
                Spacer()
                kategori_baru()
        
                
           
            }.padding()
//        }.background(Color("BgColor"))
//            .edgesIgnoringSafeArea(.all)
//            .navigationViewStyle(StackNavigationViewStyle())
//            .frame(alignment: .topTrailing)
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
