//
//  kategori baru.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 04/11/21.
//

import SwiftUI

struct kategori_baru: View {
    let data : [kategori] = [kategori(id: 1, nama: "Rumah", warna: "dasar", warna2: "warna4"),
                             kategori(id: 2, nama: "Sekolah", warna: "dasar", warna2: "warna3"),
                                          kategori(id: 3, nama: "Transportasi", warna: "dasar", warna2: "warna2"),
                             kategori(id: 4, nama: "Tagihan", warna: "dasar", warna2: "warna2"),
                             kategori(id: 5, nama: "Makan", warna: "dasar", warna2: "warna2"),
                             kategori(id: 6, nama: "Jajan", warna: "dasar", warna2: "warna2"),
                             kategori(id: 7, nama: "Pakaian", warna: "dasar", warna2: "warna2"),
                             kategori(id: 8, nama: "Skincare", warna: "dasar", warna2: "warna2")
    ]

    var body: some View {
        ScrollView(.vertical){
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], alignment: .leading, spacing: 10){
                
                ForEach(data) {
                    item in
                    option(data: item)
                }
            }
        }
//        VStack{
//            HStack(spacing : 20){
//            ForEach(data) {
//           item in
//                option(data: item)
//            }
//
//        }.padding()
//            Spacer()
//        }
    }
}

struct kategori_baru_Previews: PreviewProvider {
    static var previews: some View {
        kategori_baru()
    }
}
struct option : View{
    @State private var isTapped = false
   // @ObservedObject var kata : GlobalObject
    
    let data : kategori
    var body: some View{
      
        if(!self.isTapped){
            
        
        Text(self.data.nama)
            .font(.headline)
            .foregroundColor(.black)
            .padding(.all, 7)
            .background(Color(self.data.warna))
            .cornerRadius(7)
            .shadow(radius: 3)
            .frame(height: 40)
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
                .foregroundColor(.white)
                .padding(.all, 7)
                .background(Color(self.data.warna2))
                .cornerRadius(7)
                .shadow(radius: 3)
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
