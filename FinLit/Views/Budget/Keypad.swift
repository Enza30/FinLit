//
//  Keypad.swift
//  FinLit
//
//  Created by Pelindung Giawa on 18/11/21.
//

import SwiftUI
struct NumberField: View {
   @State var textData = "NumberModel()"
    var body: some View {
        VStack{
            VStack{

        HStack{
            VStack(alignment: .leading, spacing: 6) {
                Text("Enter Your Number").font(.caption)
                    .foregroundColor(.gray)

//                    Text(textData.phNo)
//                        .font(.title2)
//                        .fontWeight(.bold)
//                        .foregroundColor(.black)
                
            }

                Spacer(minLength: 0)
                Button(action: {}){
                    Text("Save")
                        .foregroundColor(.black)
                        .padding(.vertical,18)
                        .padding(.horizontal,38)
                        .background(Color.yellow)
                        .cornerRadius(15)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(15)
        }
        .frame(width: UIScreen.main.bounds.height / 1.8)
        .background(Color.white)
        Spacer()
    
    // Custom number Pad
    
    GeometryReader{reader in
        VStack{
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 3), spacing: 15) {
                ForEach(rows,id: \.self){value in
                    
                    Button(action: {}){
                        ZStack{
                            
                            if value == "delete.left"{
                                Image(systemName: value)
                                      .font(.title2)
                                      .foregroundColor(.black)
                            }
                            else {
                                Text(value)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            
                        }
                        .frame(width: getWidth(frame: reader.frame(in: .global)), height: getHeight(frame: reader.frame(in: .global)))
                        .background(Color.white)
                        .cornerRadius(8)
                    }
                    
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
    
}

// Number Data.......
var rows = ["1","2","3","4","5","6","7","8","9","0","delete.left"]


struct NumberField_Previews: PreviewProvider {
    static var previews: some View {
        NumberField()
    }
}

