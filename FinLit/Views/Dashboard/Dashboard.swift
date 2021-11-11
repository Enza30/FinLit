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
//            LinearGradient(colors: [Color("MainColor"), Color.white], startPoint: .topLeading, endPoint: .bottomTrailing)
            Color.white
                .edgesIgnoringSafeArea(.all
                )
            
            VStack(alignment: .leading){
                Spacer(minLength: 20)
                VStack{
                HStack(alignment: .bottom){
                   // VStack(alignment: .leading){
                        Text("Today's Balance").font(.title3).bold()
                        .foregroundColor(Color.white)
//
//                        Text("Today's Balance").font(.headline)
//                            .foregroundColor(Color("MainColor"))
//
//                    }
                    Spacer()
                    Text("Rp. 1,000,000").font(.title3).bold()
                        .foregroundColor(Color.white)
                    
                }
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(Color("dasar"))
//                } .frame( height: 65)
//                    .padding()
//
//                    .background(Color.white)
//                    .cornerRadius(15)
//                    .shadow(color: Color("shadow"), radius: 7, x: 6, y: 7)
                
                
                //Spacer(minLength: 10)
                HStack(alignment: .top){
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Total Income").font(.callout)
                            .padding(.bottom, 5)
            
                       
                        Text("Rp. 2,000,000").font(.callout).bold()
                        
                    }.foregroundColor(Color.white)
                    Spacer()
                    Rectangle()
                        .frame(width: 3, height: 50)
                        .foregroundColor(Color("dasar"))
                   Spacer()
                    VStack{
                        Text("Total Expense").font(.callout)
                            .padding(.bottom, 5)
                        
                        
                        Text("Rp. 1,000,000").font(.callout).bold()
                    }.foregroundColor(Color.white)
                    
                    Spacer()
                }
                }.padding(.all, 5)
                    .padding(.horizontal, 15)
                    .background(Color("MainColor"))
                    .cornerRadius(15)
                    .shadow( radius: 10, x: 6, y: 7)
                    
                Spacer(minLength: 15)
                VStack(alignment: .leading) {
                    Text("Monthly Expense").font(.title3).bold()
                        .padding(.horizontal, 10)
                        .foregroundColor(.white)
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
                Text("⚠️ Your current spending rate shows that you might end up living below budget by the end of the month.").font(.caption)
                    .foregroundColor(.black)
                   // .frame(width: 300)
                    .padding(.all, 10)
                    .background(Color("dasar"))
                    .cornerRadius(8)
                    Spacer()
                }
                
                
                }.padding(.vertical, 10)
                

                    .background(Color("MainColor"))
                    .cornerRadius(15)
                    .shadow( radius: 10, x: 6, y: 7)
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
