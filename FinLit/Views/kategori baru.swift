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
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], alignment: .center, spacing: 30){
                
                ForEach(data) {
                    item in
                    option(data: item)
                }
            }.padding()
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
        
       // if(!self.isTapped){
            
        VStack{
            Image(systemName: "house.fill")
                .resizable()
                .frame(width: 33, height: 33, alignment: .center)
                .foregroundColor(Color("ActionColor"))
            Text(self.data.nama)
                .font(.caption).bold()
            
                .font(.headline)
                .foregroundColor(Color("ActionColor"))
            Text("Rp. 30,000").font(.callout).bold()
                .padding(.vertical, 3)
                
            }
        .frame(width: 90, height: 105)
        //                .padding(.all, 7)
            .background(Color.white)
                        .cornerRadius(7)
                        .shadow(radius: 4, x: 0, y: 1)
//                .onTapGesture {
//
//                    if(!self.isTapped){
//                        self.isTapped = true
//                        print(isTapped)
//                    }else {
//                        self.isTapped = false
//                        print(isTapped)
//                    }
//                }
//        }else {
//            Text(self.data.nama)
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding(.all, 7)
//                .background(Color(self.data.warna2))
//                .cornerRadius(7)
//                .shadow(radius: 3)
//                .onTapGesture {
//                    if(!self.isTapped){
//                        self.isTapped = true
//                        print(isTapped)
//                    }else {
//                        self.isTapped = false
//                        print(isTapped)
//                    }
//                }
//        }
        
    }
    
}
