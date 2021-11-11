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
            Color.white
                .edgesIgnoringSafeArea(.all
                )
            
            VStack(alignment: .leading){
                HStack(alignment: .bottom){
                    VStack(alignment: .leading){
                        Text("Dashboard").font(.title).bold()
                            .foregroundColor(Color("MainColor"))
                        Text("Today's Balance").font(.headline)
                            .foregroundColor(Color("MainColor"))
                        
                    }
                    Spacer()
                    Text("Rp. 90,000").font(.title).bold()
                        .foregroundColor(Color("MainColor"))
                    
                } .frame( height: 65)
                    .padding()
                   
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color("shadow"), radius: 7, x: 6, y: 7)
                
                
                Spacer(minLength: 10)
                HStack(alignment: .top){
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Total Income").font(.callout)
                            .padding(.bottom, 5)
                       
                        Text("Rp. 2,000,000").font(.callout).bold()
                        
                    }
                    Spacer()
                    Rectangle()
                        .frame(width: 3, height: 50)
                        .foregroundColor(Color("dasar"))
                   Spacer()
                    VStack{
                        Text("Total Expense").font(.callout)
                            .padding(.bottom, 5)
                        
                        
                        Text("Rp. 1,000,000").font(.callout).bold()
                    }
                    
                    Spacer()
                }.padding(.all, 5)
                    .padding(.horizontal, 15)
                    .background(Color.white)
                    .cornerRadius(7)
                    .shadow(color: Color("shadow"), radius:7, x: 6, y: 7)
                Spacer(minLength: 15)
                VStack {
                HStack{ Spacer()
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
                }
                HStack{
                    Spacer()
                Text("Your current lah lah lah spending rate shows that you might end up living below budget by the end of the month.").font(.callout)
                    .foregroundColor(.white)
                   // .frame(width: 300)
                    .padding(.all, 10)
                    .background(Color("ColorSecond"))
                    .cornerRadius(15)
                    Spacer()
                }
                
                
                }.padding(.vertical, 10)

                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color("shadow"), radius: 7, x: 6, y: 7)
                Spacer(minLength: 30)
                Text("Daily Expense").font(.headline)
                
                Spacer(minLength: 10)
//                ZStack{
//                    Color.white
//                        .cornerRadius(15)
              
//                        .shadow( radius: 5, x: 6, y: 7)
                    kategori_baru()
//                    .padding(.all, 15)
    
        
           
           
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
