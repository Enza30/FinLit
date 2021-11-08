//
//  lazygrid.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 04/11/21.
//

import SwiftUI

struct lazygrid: View {
    @State private var isTapped = false
    
        let data = Array(1...5).map {"Item \($0)"}
        let layout = [
            GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
   let nama = ["Rumah", "Sekolah", "Makan", "Hiburan", "Lainnya"]
        var body: some View {
            ZStack{
                Section{
                Color.clear
            ScrollView {
                LazyVGrid(columns: layout, spacing: 30 ){
                    ForEach(data, id: \.self) {
                        item in
                        
    
                        if (!self.isTapped){
                        Text(item)
                                .font(.headline)
                                .bold()
                                .foregroundColor(Color.white)
                                .padding(.all,5)
                                .background(Color("warna2"))
                                .cornerRadius(7)
                                .onTapGesture {
                                    if(!self.isTapped){
                                    self.isTapped = true
                                        print(isTapped)
                                    }else {
                                        self.isTapped = false
                                        print((isTapped))
                                    }
                                }
                        }else {Text(item)
                                .font(.headline)
                                .bold()
                                .foregroundColor(Color.black)
                                .padding(.all,5)
                                .background(Color("warna"))
                                .cornerRadius(7)
                                .onTapGesture {
                                    if(!self.isTapped){
                                    self.isTapped = true
                                        print(isTapped)
                                    }else {
                                        self.isTapped = false
                                        print((isTapped))
                                    }
                                }
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
