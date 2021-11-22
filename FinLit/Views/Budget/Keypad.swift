//
//  Keypad.swift
//  FinLit
//
//  Created by Pelindung Giawa on 18/11/21.
//

import SwiftUI
struct NumberField: View {
   @State var textData = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            VStack{
                Text("Edit Budget")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    //.multilineTextAlignment(.center)

            HStack{
                VStack(alignment: .leading, spacing: 6) {
                    TextField("Enter Your Number", text: $textData).font(.caption)
                    .foregroundColor(.gray)

//                    Text(textData.phNo)
//                        .font(.title2)
//                        .fontWeight(.bold)
//                        .foregroundColor(.black)
                    
                
            }

                Spacer(minLength: 0)
                Button(action: {dismiss()
                }){
                    Text("Save")
                        .foregroundColor(.black)
                        .padding(.vertical,18)
                        .padding(.horizontal,38)
                        .background(Color.yellow)
                        .cornerRadius(15)
                }
            }
            .padding()
            .background(Color.orange)
            .cornerRadius(15)
        }
        .frame(width: UIScreen.main.bounds.height / 2.2)
        .background(Color.white)
        Spacer()
    
    // Custom number Pad
    
    GeometryReader{reader in
        VStack{
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 3), spacing: 15) {
                ForEach(rows,id: \.self){value in
                    
                    Button(action: {buttonAction(value: value)}){
                        ZStack{
                            
                            if value == "delete.left"{
                                Image(systemName: value)
                                      .font(.title)
                                      .foregroundColor(.black)
                            }
                            else {
                                Text(value)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            
                        }
                        .frame(width: getWidth(frame: reader.frame(in: .global)), height: getHeight(frame: reader.frame(in: .global)))
                        .background(Color.white)
                        .cornerRadius(8)
                    }
                    
                    //disabling button for empty action...
                    .disabled(value == "" ? true : false)
                    
                }
            }
        }
        
    }
    .padding()
 }
    .background(Color.white.ignoresSafeArea(.all, edges: .bottom))
}
    //getting height and width for dynamic sizing......
    
    func getWidth(frame: CGRect)->CGFloat{
      
        let width = frame.width
        let actualWidth = width - 40
        return actualWidth / 3
    }
    func getHeight(frame: CGRect)->CGFloat{
        let height = frame.height
        let actualHeight = height - 30
        return actualHeight  / 4
    }
    
    func buttonAction(value: String){
        if value == "delete.left" && textData != "" {
            textData.removeLast()
        }
        else {
            textData.append(value)
        }
    }
    
}

// Number Data.......
var rows = ["1","2","3","4","5","6","7","8","9","0","delete.left"]


struct NumberField_Previews: PreviewProvider {
    static var previews: some View {
        NumberField()
    }
}


