//
//  EditBudgetView.swift
//  FinLit
//
//  Created by Pelindung Giawa on 15/11/21.
//

import SwiftUI

struct EditBudgetView: View {
    var budgetToInvite: [ModelEditBudget]
    var body: some View {
        NavigationView{
            List(budgetToInvite){
                budget in ListRow(eachBudget: budget)
            }.navigationTitle(Text("EditBudget"))
        }
    }
}

struct ListRow: View{
    var eachBudget: ModelEditBudget
    var body: some View{
        HStack{
            
            Image("shopee")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 40)
            
            Text(eachBudget.kategori)
            
        }
    }
}

var myBudget = [
    ModelEditBudget(id: 1, kategori: "Travel" ),
    ModelEditBudget(id: 2, kategori: "Groceries" ),
    ModelEditBudget(id: 3, kategori: "Snacks" ),
    ModelEditBudget(id: 4, kategori: "Phone" )
]

struct EditBudgetView_Previews: PreviewProvider {
    static var previews: some View {
        EditBudgetView(budgetToInvite: myBudget)
    }
}
