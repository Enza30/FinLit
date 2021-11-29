//
//  kategori baru.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 04/11/21.
//

import SwiftUI

struct kategori_baru: View {
    let data : [kategori] = [
        kategori(id: 1, nama: "Beauty", gambar: "beauty", warna: "dasar", warna2: "warna4"),
        
        kategori(id: 2, nama: "Clothes", gambar: "clothes", warna: "dasar", warna2: "warna4"),
        
        kategori(id: 3, nama: "Drink", gambar: "drink", warna: "dasar", warna2: "warna4"),
                                    
        kategori(id: 4, nama: "Food", gambar: "food", warna: "dasar", warna2: "warna4"),
        
        kategori(id: 5, nama: "Groceries", gambar: "groceries", warna: "dasar", warna2: "warna4"),
        
        kategori(id: 6, nama: "Health", gambar: "health", warna: "dasar", warna2: "warna4"),
        
        kategori(id: 7, nama: "Phone", gambar: "phone", warna: "dasar", warna2: "warna4"),
        
        kategori(id: 8, nama: "Rent", gambar: "rent", warna: "dasar", warna2: "warna4"),
        
        kategori(id: 9, nama: "Snacks", gambar: "snacks", warna: "dasar", warna2: "warna4"),
        
        kategori(id: 10, nama: "Social", gambar: "social", warna: "dasar", warna2: "warna4"),
        
        kategori(id: 11, nama: "Stationary", gambar: "stationery", warna: "dasar", warna2: "warna4"),
        
        kategori(id: 12, nama: "Transport", gambar: "transport", warna: "dasar", warna2: "warna4"),
        
        kategori(id: 13, nama: "Travel", gambar: "travel", warna: "dasar", warna2: "warna4"),
                                    
    ]
//    let data : [kategori] = [kategori(id: 1, nama: "Rumah", warna: "dasar", warna2: "warna4"),
//                             kategori(id: 2, nama: "Sekolah", warna: "dasar", warna2: "warna3"),
//                             kategori(id: 3, nama: "Transportasi", warna: "dasar", warna2: "warna2"),
//                             kategori(id: 4, nama: "Tagihan", warna: "dasar", warna2: "warna2"),
//                             kategori(id: 5, nama: "Makan", warna: "dasar", warna2: "warna2"),
//                             kategori(id: 6, nama: "Jajan", warna: "dasar", warna2: "warna2"),
//                             kategori(id: 7, nama: "Pakaian", warna: "dasar", warna2: "warna2"),
//                             kategori(id: 8, nama: "Skincare", warna: "dasar", warna2: "warna2")
//    ]

    
    
    
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
    @State private var inputExpense = false
    // @ObservedObject var kata : GlobalObject
    
    let data : kategori
    var body: some View{
        
        ZStack(alignment: .center){
     
          
        VStack{
            Spacer()
            Image(self.data.gambar)
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 36, alignment: .center)
                .foregroundColor(Color("ActionColor"))
                
            Text(self.data.nama)
            
                .font(.system(size: 12))
                .foregroundColor(.secondary)
                .padding(.vertical, 2)
            Text("Rp. 30.000").font(.system(size: 14)).bold()
                .padding(.vertical, 3)
                Spacer()
        }.frame(width: 110, height: 125)
        //                .padding(.all, 7)
            .background(Color.white)
                        .cornerRadius(7)
                        .shadow(radius: 3, x: 1, y: 1)
         
            Button("                                                                                                                                         "){
                inputExpense.toggle()
                ()   }
            .sheet(isPresented: $inputExpense){
                modalTry()
            }
            .padding(.all, 50)
        }
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

        
    }
    
}
