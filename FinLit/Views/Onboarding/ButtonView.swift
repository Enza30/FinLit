//
//  ButtonView.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 05/11/21.
//

import SwiftUI

struct ButtonView: View {
    @Binding var selection: Int
    let buttons = "Selanjutnya"
    
    
    var body: some View {
        HStack {
            Button(action: {buttonAction(buttons)}, label: {
                Text(buttons)
                    .fontWeight(.heavy)
                    .padding()
                    .frame(width: 320, height: 44)
                    .background(Color("warna6"))
                    .cornerRadius(12)
                    .padding(.horizontal)
            })
        }
        .foregroundColor(.black)
        .padding()
    }
    
    func buttonAction(_ buttonLabel: String) {
        withAnimation {
            if buttons == "Selanjutnya" && selection < tabs.count - 1 {
                selection += 1
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(selection: Binding.constant(0))
    }
}
