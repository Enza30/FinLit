//
//  Display.swift
//  FinLit
//
//  Created by Farendza Muda on 04/11/21.
//

import SwiftUI

struct Display: View {
    var budget : String
    
    var body: some View {
        Text(budget)
        
    }
}

struct Display_Previews: PreviewProvider {
    static var previews: some View {
        Display(budget: "test")
    }
}
