//
//  inputPage.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 01/11/21.
//

import SwiftUI

struct inputPage: View {
    @State private var isTapped = false
    @State var income : String = ""
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack{
            VStack{
                HStack{
                    
                    VStack(alignment: .leading){
                    Text("Hi!").font(.largeTitle).bold()
                            
                        Text("Selamat datang di Indomaret!").font(.callout)
                            
                    
                }.foregroundColor(.black)
                    Spacer()
                    Image(systemName: "eyes")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    
                }
                .frame( height: 100)
                .padding(.all, 25)
                .background(Color("warna5"))
                .edgesIgnoringSafeArea(.top)
                
            
            }
                VStack(alignment: .leading){
            VStack(alignment: .leading){
                Text("Income").font(.largeTitle).bold()
                    .padding(.bottom, 5)
                Text("Silakan masukkan pendapatan kamu per bulan pada kolom di bawah ini")
                    .padding(.all,5)
//
                TextField("Income..", text: $income)
                    .foregroundColor(.black)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                    .padding(.trailing,50)
                Spacer(minLength: 30)
            
            
                    Text("Pilih Kategori").font(.title).bold()
                        .onTapGesture {
                            self.isTapped = true
                            print(self.isTapped)
                        }
                        
                    
                    kategori_baru()
                
                }
                
            
                Spacer()
                Button(action: {print("AYoo")}){
                    HStack{
                    Spacer()
                        Text ("Selanjutnya").font(.headline)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding()
                    .background(Color("warna5"))
                    .cornerRadius(13)
                }
                }.background(Color.white)
                    .padding(.horizontal, 30)

            }
            
        }
    }
}

struct inputPage_Previews: PreviewProvider {
    static var previews: some View {
        inputPage()
    }
}
