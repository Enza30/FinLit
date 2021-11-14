//
//  Budget.swift
//  FinLit
//
//  Created by Farendza Muda on 04/11/21.
//

import SwiftUI

struct Budget: View {
    var body: some View {
        NavigationView {
            ScrollView {
                topCardView()
            }
            .navigationTitle("Budget")
        }
    }
}

struct Budget_Previews: PreviewProvider {
    static var previews: some View {
        Budget()
    }
}
