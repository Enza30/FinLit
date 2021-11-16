//
//  NumberField.swift
//  FinLit
//
//  Created by Pelindung Giawa on 15/11/21.
//

import SwiftUI
struct NumberField: View {
    @State var textData = NumberModel()
    var body: some View {
        VStack{
            
            HStack{
                VStack(alignment: .leading, spacing: 6) {
                    Text("Enter Your Number").font(.caption)
                        .foregroundColor(.gray)
                    
                    Text(textData.phNo)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Spacer(minLength: 0)
                    Button(action: {}){
                        Text("Save")
                            .foregroundColor(.black)
                            .padding(.vertical,18)
                            .padding(.horizontal,38)
                            .background(Color("yellow"))
                            .cornerRadius(15)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
            }
        }
    }
}

struct NumberField_Previews: PreviewProvider {
    static var previews: some View {
        NumberField()
    }
}
