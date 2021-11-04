//
//  inputPage.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 01/11/21.
//

import SwiftUI

struct inputPage: View {
    @State var income : String = ""
    var body: some View {
        NavigationView{
            VStack{
            List{
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
            
            }
                
                VStack(alignment: .leading){
                    Text("Pilih Kategori").font(.title).bold()
                        
                    
                    lazygrid()
                }
            }
                Spacer()
                Button(action: {print("AYoo")}){
                    HStack{
                    Spacer()
                        Text ("Selanjutnya").font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(13)
                }
            }
                .navigationBarTitle("Set Budget")
            
        }
    }
}

struct inputPage_Previews: PreviewProvider {
    static var previews: some View {
        inputPage()
    }
}
