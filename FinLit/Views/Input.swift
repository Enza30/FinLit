//
//  Input.swift
//  FinLit
//
//  Created by Farendza Muda on 04/11/21.
//

import SwiftUI

struct Input: View {
    let budget: Int = 1000000
    
    var body: some View {
        //TextField("Placeholder", text: $budget)
       
        NavigationView {
            NavigationLink("Go to next", destination:  Display(budget: "\(budget)"))
                .foregroundColor(.white)
                .padding(.horizontal, 80)
                .padding(.vertical, 20)
                .background(Color("warna3"))
                .cornerRadius(13)
            
        }
    }
}

struct Input_Previews: PreviewProvider {
    static var previews: some View {
        Input()
    }
}



