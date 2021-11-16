//
//  categoryBudgetList.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 15/11/21.
//

import SwiftUI

struct categoryBudgetList: View {
    var body: some View {
        List {
            categoryBudgetRow()
                    
        }.frame(width: 500, height: 844)
        
        }
    }

struct categoryBudgetList_Previews: PreviewProvider {
    static var previews: some View {
        categoryBudgetList()
    }
}
