//
//  Dashboard.swift
//  FinLit
//
//  Created by Farendza Muda on 04/11/21.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("Color"), Color.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
            Image(systemName: "play.circle.fill")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.cyan)
                
                
                Spacer(minLength: 100)
                kategori_baru()
        
                
            }.padding(.all, 30)
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
