//
//  Dashboard.swift
//  FinLit
//
//  Created by Farendza Muda on 04/11/21.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
      
        NavigationView{
            ScrollView{
        
                ZStack{
//            LinearGradient(colors: [Color("MainColor"), Color.white], startPoint: .topLeading, endPoint: .bottomTrailing)
            Color.white
                .edgesIgnoringSafeArea(.all
                )
            
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                VStack{
               
                  
                        Text("August 2022").font(.title3).bold()
                        .foregroundColor(Color.secondary)


                    Text("Rp. 1,000,000").font(.largeTitle).bold()
                        .foregroundColor(Color("NewSecondColor"))
                    
            
                
                }.padding(.all, 5)
                    Spacer()
                }
                    
                Spacer(minLength: 15)
                HStack{
                    Spacer()
                VStack(alignment: .leading) {
                    HStack{
                        Spacer()
                        Text("You want to go broke?").font(.title3).bold()
                        .foregroundColor(.black)
                        Spacer()
                    }.padding(10)
                        .background(Color("NewActionColor"))
                    .ignoresSafeArea()
                    
                    
                    Text("Expense Rate").font(.title3).bold()
                        .padding(.horizontal, 10)
                        .foregroundColor(.black)
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
                    HStack(alignment: .top){
                        Spacer()
                        HStack{
                        VStack(alignment: .leading, spacing: 2){
                            Text("Total Income").font(.callout)
                                .padding(.bottom, 5)
                                .foregroundColor(.secondary)
                
                           
                            Text("Rp. 2,000,000").font(.callout).bold()
                            
                        }.foregroundColor(Color.black)
            
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .foregroundColor(Color("NewActionColor"))
                                .frame(width: 30, height: 30)
                                .padding(.horizontal, 7)
                        }
                        Spacer()
                        Rectangle()
                            .frame(width: 3, height: 50)
                            .foregroundColor(Color("dasar"))
                       Spacer()
                        VStack(alignment: .trailing, spacing: 2){
                            Text("Total Expense").font(.callout)
                                .padding(.bottom, 5)
                                .foregroundColor(.secondary)
                            
                            Text("Rp. 1,000,000").font(.callout).bold()
                        }.foregroundColor(Color.black)
                        
                        Spacer()
                    }
               
                
                }.padding(5)
                    .background(.white)
                    .cornerRadius(8)
                    .shadow(radius: 5, x: 2, y: 3)
                    .shadow(color: Color.white, radius: 5, x: -2, y: -3)
                    Spacer()
                }

//                    .background(Color("MainColor"))
//                    .cornerRadius(15)
//                    .shadow( radius: 10, x: 6, y: 7)
                Spacer(minLength: 30)
                HStack{
                Text("Today's Expense").font(.headline)
              Spacer()
                 Text("Rp. 0")
                    Spacer(minLength: 10)
                }
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
            }.navigationTitle("Your Money")
    }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
