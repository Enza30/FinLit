//
//  Budget.swift
//  FinLit
//
//  Created by Farendza Muda on 04/11/21.
//

import SwiftUI

struct BudgetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
        VStack(alignment:.center , spacing: 0) {
                    
                    HStack {
                        Spacer(minLength: 50)
                        topCardView()
                    }
                    HStack {
                        categoryBudgetList()
                        Spacer()
        
                    }
                    
                }
                
            }
            .navigationTitle("Budget")
        }
    }
}

struct BudgetView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetView()
    }
}
