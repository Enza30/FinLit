//
//  modalTry.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 22/11/21.
//

import SwiftUI

struct modalTry: View {
  @State var input = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Spacer()
        TextField("", text: $input)
                .padding()
            .keyboardType(.decimalPad)
            .font(.largeTitle)
            .textFieldStyle(.roundedBorder)
        Spacer()
        Button("Save"){
            dismiss()
        }
        .padding(.horizontal, 100)
        .padding(.vertical)
        .foregroundColor(.white)
        .background(Color("MainColor"))
        .cornerRadius(11)
            
           
    }
    }
}

struct modalTry_Previews: PreviewProvider {
    static var previews: some View {
        modalTry()
    }
}

