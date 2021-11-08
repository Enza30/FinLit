//
//  inputPage.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 01/11/21.
//

import SwiftUI

struct inputPage: View {
    @AppStorage ("_isOnboardingViewShowing") var isOnboardingViewShowing: Bool = true
    @State private var isTapped = false
    @State var income : String = ""
    var body: some View {

        Group { if isOnboardingViewShowing {
            OnboardingView(isOnboardingViewShowing: $isOnboardingViewShowing)
        } else {
            ZStack{
                
    //            Color.white
    //                .edgesIgnoringSafeArea(.all)
                NavigationView {
                VStack{
        
                    HStack(alignment: .top){
                        
                        VStack(alignment: .leading){
                        Text("Hi!").font(.largeTitle).bold()
                                
                            Text("Selamat datang di Indomaret!").font(.callout)
                                
                        
                    }.foregroundColor(.black)
                        Spacer()
                        Image("shopee")
                        
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(5)
                            
                        
                        
                    }
                    .frame( height: 10)
                    .padding(.bottom,35)
                    .padding(.horizontal, 20)
                    .background(Color("warna5"))
                    
                    
                
              
                    VStack(alignment: .leading){
                VStack(alignment: .leading){
                    Text("Income").font(.largeTitle).bold()
                        .padding(.bottom, 5)
                    Text("Silakan masukkan pendapatan kamu per bulan pada kolom di bawah ini")
                        .padding(.all,5)
                        .background(Color("warna6"))
    //
                    TextField("Income..", text: $income)
                        .foregroundColor(.black)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                        .padding(.trailing,50)
                    Spacer(minLength: 30)
                
                
                        Text("Pilih Kategori").font(.title).bold()
                        Text("Silahkan pilih kategori untuk budget dan pengeluaran per bulan")
                        .padding(.all, 5)
                        .background(Color("warna6"))
                            
                    
                        kategori_baru()
                    
                        
                   
                    }
                .padding(.horizontal)
                    
                
                    Spacer()
                        HStack{
                            Spacer()
                            NavigationLink("Selanjutnya", destination:  kategori_baru())
                                .foregroundColor(.white)
                                .padding(.horizontal, 80)
                                .padding(.vertical, 15)
                                .background(Color("warna3"))
                                .cornerRadius(17)
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
    }
}

struct inputPage_Previews: PreviewProvider {
    static var previews: some View {
        inputPage()
    }
}
