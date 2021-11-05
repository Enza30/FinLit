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
            Color.white
            VStack{
            Image(systemName: "heart")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
            kategori_baru()
                
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
