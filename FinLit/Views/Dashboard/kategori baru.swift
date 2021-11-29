//
//  kategori baru.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 04/11/21.
//

import SwiftUI

struct kategori_baru: View {
    let data : [kategori] = [kategori(id: 1, nama: Category.food.nameList, warna: "dasar", warna2: "warna4", image: Category.food.systemNameIcon),
                             kategori(id: 2, nama: Category.drinks.nameList, warna: "dasar", warna2: "warna3", image: Category.drinks.systemNameIcon),
                             kategori(id: 3, nama: Category.groceries.nameList, warna: "dasar", warna2: "warna2", image: Category.groceries.systemNameIcon),
                             kategori(id: 4, nama: Category.transport.nameList, warna: "dasar", warna2: "warna2",image: Category.transport.systemNameIcon),
                             kategori(id: 5, nama: Category.health.nameList, warna: "dasar", warna2: "warna2", image: Category.health.systemNameIcon),
                             kategori(id: 6, nama: Category.rent.nameList, warna: "dasar", warna2: "warna2", image: Category.rent.systemNameIcon),
                             kategori(id: 7, nama: Category.clothes.nameList, warna: "dasar", warna2: "warna2", image: Category.clothes.systemNameIcon),
                             kategori(id: 8, nama: Category.travel.nameList, warna: "dasar", warna2: "warna2", image: Category.travel.systemNameIcon),
                             kategori(id: 9, nama: Category.beauty.nameList, warna: "dasar", warna2: "warna2", image: Category.beauty.systemNameIcon),
                             kategori(id: 10, nama: Category.others.nameList, warna: "dasar", warna2: "warna2", image: Category.others.systemNameIcon)
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
    @State private var inputExpense = false
    // @ObservedObject var kata : GlobalObject
    
    let data : kategori
    var body: some View{
        
        ZStack(alignment: .center){
     
          
        VStack{
            Spacer()
            Image(systemName: self.data.image)
                .resizable()
                .frame(width: 45, height: 45, alignment: .center)
                .foregroundColor(Color("ActionColor"))
                
            Text(self.data.nama)
            
                .font(.system(size: 12))
                .foregroundColor(.secondary)
                .padding(.vertical, 2)
            Text("Rp. 0").font(.system(size: 14)).bold()
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
