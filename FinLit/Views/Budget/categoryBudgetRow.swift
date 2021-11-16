//
//  categoryBudgetRow.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 15/11/21.
//

import SwiftUI

struct categoryBudgetRow: View {
    var body: some View {
        HStack {
            Spacer()
            Spacer()
            ZStack {
                Image(systemName: "airplane")
                    .resizable()
                    .frame(width: 32, height: 32)
                .foregroundColor(Color("ActionColor"))
            }
            .frame(width: 64, height: 64, alignment: .center)
            Spacer()
                
            VStack {
                HStack(alignment:.bottom) {
                    Spacer()
                    Spacer()
                    Text("Travel")
                        .font(.system(size: 14)).bold()
                        .frame(width: 57, height: 14, alignment: .topLeading)
                        
                    Spacer()
                    HStack {
                        Spacer()
                        Spacer()
                        HStack{
                            Text("Rp.500.000")
                            .font(.system(size: 12))
                            
                            
                        }
                        .frame(width: 72, height: 14, alignment: .topTrailing)
                        
                        HStack {
                            Text("of Rp.700.000")
                                .font(.system(size: 12))
                                .foregroundStyle(.secondary)
                    
                        }
                        .frame(width: 88, height: 14, alignment: .topTrailing)
                        Spacer(minLength: 10)
                        
                    }
                    .frame(width: 244, height: 14)
                }
                HStack {
//                    Rectangle()
//                        .frame(width: 280, height: 13)
//                        .foregroundColor(Color("MainColor"))
                    barBudget()
                    Spacer()
                }
                .frame(width: 280, height: 13)
            }
           

        }
        .frame(height: 68)
        .padding()
        .edgesIgnoringSafeArea(.all)
        .background(Color.white)
        
    }
}

struct barBudget: View{
    @State var currentProgress: CGFloat = 155.0
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .foregroundColor(.secondary)
                .frame(width: 280, height: 14)
            
            Rectangle()
                .foregroundColor(Color("MainColor"))
                .frame(width: currentProgress, height: 14)
        }
    }
}




struct categoryBudgetRow_Previews: PreviewProvider {
    static var previews: some View {
        categoryBudgetRow()
    }
}
