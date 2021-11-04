//
//  lazygrid.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 04/11/21.
//

import SwiftUI

struct lazygrid: View {
    
        let data = Array(1...5).map {"Item \($0)"}
        let layout = [
            GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        var body: some View {
            ZStack{
                Section{
                Color.clear
            ScrollView {
                LazyVGrid(columns: layout, spacing: 30 ){
                    ForEach(data, id: \.self) {
                        item in
                        ZStack{
                        Capsule()
                                .fill(Color.yellow)
                                .frame(width: 90, height: 30)
                                .cornerRadius(7)
                                .shadow(radius: 3, x: 1, y:1)
                                
                            Spacer(minLength: 10)
                            Text(item)
                                .font(.caption)
                                .bold()
                                .foregroundColor(Color.white)
                                
                        }
                    }
                }
                .padding()
            }
                    
            }
                
        }
        }
    }
struct lazygrid_Previews: PreviewProvider {
    static var previews: some View {
        lazygrid()
    }
}
