//
//  kategori baru.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 04/11/21.
//

import SwiftUI

struct kategori_baru: View {
    let data : [kategori] = [kategori(id: 1, nama: "Rumah", warna: "dasar", warna2: "warna4"),
                             kategori(id: 2, nama: "Ayam", warna: "dasar", warna2: "warna3"),
                                          kategori(id: 3, nama: "Kepala", warna: "dasar", warna2: "warna2")
    ]
    var body: some View {
        VStack{
        HStack{
            ForEach(data) {
           item in
                option(data: item)
            }
        
        }
            Spacer()
        }
    }
}

struct kategori_baru_Previews: PreviewProvider {
    static var previews: some View {
        kategori_baru()
    }
}
struct option : View{
    @State private var isTapped = false
    
    let data : kategori
    var body: some View{
        
        if(!self.isTapped){
            
        
        Text(self.data.nama)
            .font(.headline)
            .foregroundColor(.black)
            .padding(.all, 7)
            .background(Color(self.data.warna))
            .cornerRadius(7)
            .onTapGesture {
                if(!self.isTapped){
                self.isTapped = true
                print(isTapped)
                }else {
                    self.isTapped = false
                    print(isTapped)
                }
            }
        }else {
            Text(self.data.nama)
                .font(.headline)
                .foregroundColor(.black)
                .padding(.all, 7)
                .background(Color(self.data.warna2))
                .cornerRadius(7)
                .onTapGesture {
                    if(!self.isTapped){
                    self.isTapped = true
                    print(isTapped)
                    }else {
                        self.isTapped = false
                        print(isTapped)
                    }
                }
            }
    }
        
}
struct kategori : Identifiable{
    let id : Int
    let nama : String
    let warna : String
    let warna2 : String
    
    init (id: Int, nama : String, warna : String, warna2 : String){
        self.id = id
        self.nama = nama
        self.warna = warna
        self.warna2 = warna2
    }
}
