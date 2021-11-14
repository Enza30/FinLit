//
//  inputExpense.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 14/11/21.
//

import SwiftUI

struct inputExpense: View {
    @State var expense : String = ""
    var body: some View {
        VStack{
            Spacer()
            TextField("", text: $expense)
                .font(.custom("SF Pro", size: 20))
                .padding()
                .foregroundColor(.black)
                .textFieldStyle(.automatic)
                
            Button(action: {print("Save button tapped")}){
                HStack{
                    Spacer()
                    Text("Save")
                        .font(.custom("SF Pro", size: 24))
                        .padding(.horizontal, 150)
                        .padding(.vertical, 15)
                        .background(Color("MainColor"))
                        .foregroundColor(.white)
                        
                    Spacer()
                }
            }
            Spacer()
            
        }
    }
}

struct inputExpense_Previews: PreviewProvider {
    static var previews: some View {
        inputExpense()
    }
}
