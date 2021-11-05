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
            
//            Color.white
//                .edgesIgnoringSafeArea(.all)
            NavigationView {
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
                .frame( height: 30)
                .padding()
                .background(Color("warna5"))
                //.edgesIgnoringSafeArea(.top)
                
            
          
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
            .padding()
                
            
                Spacer()
                    HStack{
                        Spacer()
                        NavigationLink("Go to next", destination:  kategori_baru())
                            .foregroundColor(.white)
                            .padding(.horizontal, 80)
                            .padding(.vertical, 20)
                            .background(Color("warna3"))
                            .cornerRadius(13)
                        Spacer()
                    }
                }
                }

            }.background(Color.white)
                .edgesIgnoringSafeArea(.all)
                .navigationViewStyle(StackNavigationViewStyle())
                .frame(alignment: .topTrailing)
            
        }
    }
}

struct inputPage_Previews: PreviewProvider {
    static var previews: some View {
        inputPage()
    }
}
