//
//  topCardView.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 14/11/21.
//

import SwiftUI

struct topCardView: View {
    
    let month = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "NOV", "DES"]
    
    let layout = [
        GridItem(.flexible(maximum: 80))
        ]
    
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea(.all)
            
//            VStack(alignment: .leading) {
            VStack (spacing: 0) {
                ScrollView(.horizontal) {
                    LazyHGrid(rows: layout, spacing: 20) {
                        ForEach(month, id: \.self) { item in
                            VStack {
                                Button(action: {}, label: {
                                    Text(item)
                                        .font(.system(size: 18)).bold()
                                        .foregroundColor(.black)
                                        .padding(.horizontal)
                                })
                                    
                                
                                Text("2022")
                                    .font(.system(size: 14))
                            }
                        }
                    }
                    .frame(height: 60)
                    .padding(.horizontal)
                }
                HStack(alignment:.center){
                        Spacer()
                        Spacer()
                        
                        bar()
                            .frame(width: 128, height: 128, alignment: .center)

                        Spacer(minLength: 50)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Spacer(minLength: 5)
                            Text("Remaining Budget")
                                .font(.system(size: 14)).opacity(0.5)
                                .frame(width: 175, height: 18, alignment: .topTrailing)
                                .foregroundColor(Color.black)
                                
                            Text("RP.300.000")
                                .font(.system(size: 18)).bold()
                                .frame(width: 175, height: 18, alignment: .topTrailing)
                                .foregroundColor(Color.black)
                            Spacer()
                            
                            Text("Base budget")
                                .font(.system(size: 14)).opacity(0.5)
                                .frame(width: 175, height: 18, alignment: .topTrailing)
                                .foregroundColor(Color.black)
                    
                            Text("Rp. 1.500.000 of 1.750.000")
                                .font(.system(size: 14))
                                .foregroundColor(Color.black)
                                .frame(width: 175, height: 20, alignment: .topTrailing)
                            Spacer()
                                
                            HStack {
    //                            Button(action: {}, label: {
    //                                HStack {
    //                                    Text("Add income")
    //                                        .font(.system(size: 14))
    //                                        .frame(width: 88, height: 29)
    //                                        .background(Color("ActionColor"))
    //                                        .cornerRadius(8)
    //
    //
    //                                }
    //                                .foregroundColor(Color.white)
    //                            })
                                
                                HStack {
                                    Spacer()
                                    Button(action: {}, label: {
                                            Text("Edit budget")
                                                .font(.system(size: 14))
                                                .frame(width: 150, height: 29)
                                                .padding(.horizontal, 10)
                                                .background(Color("ActionColor"))
                                                .cornerRadius(8)
                                                .foregroundColor(.white)
                                                Spacer()
                                    })
                                }
                                
                            }
                            
                        }
                        .frame(height: 163)
    //                    .border(.secondary, width: 1)

                    }
                    .frame(height:164)
                    .padding()
                    .edgesIgnoringSafeArea(.all)
                    .background(Color.white)
                .cornerRadius(15)
            }
                
//            }
//            .padding()
        
        }
    }
}

struct topCardView_Previews: PreviewProvider {
    static var previews: some View {
        topCardView()
    }
}
