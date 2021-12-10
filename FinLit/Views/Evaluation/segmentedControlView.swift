//
//  segmentedControlView.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 21/11/21.
//

import SwiftUI
import CoreData

struct segmentedControlView: View {
    
    @State private var selectedSegment: typeOfTheSelection = .weekly
    
    @FetchRequest(
        entity: Expense.entity(),
        sortDescriptors: []
    )
    var expense : FetchedResults<Expense>
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    Picker("History", selection: $selectedSegment) {
                        ForEach(typeOfTheSelection.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    choosenHistoryView(selectedHistory: selectedSegment)
                        .padding(5)
                    
                    HStack{
                        Text("Latest Expenses")
                            .font(.system(size: 14)).bold()
                    }
                    .padding(5)
                    
                    ForEach(expense) {expense in
                        HStack {
                            Spacer()
                            VStack {
                                Text("Food")
                                    .font(.system(size: 14)).bold()

                                Text("22|08 15:32")
                                    .font(.system(size: 14))
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer(minLength: 180)
                            
                            Text("- Rp.20.000")
                                .font(.system(size: 14))
                                .foregroundColor(.red)
                            Spacer()
                        }
                        Spacer(minLength: 50)
                    }
                    

                    
                    HStack {
                        Button(action: {}, label: {
                                Text("Transactions")
                                .font(.system(size: 14)).bold()
                                    .frame(width: 330, height: 32)
                                    .padding(.horizontal, 10)
                                    .background(Color("ActionColor"))
                                    .cornerRadius(8)
                                    .foregroundColor(.white)
                        })
                    }
                    
                
                }
                .navigationTitle(("History"))
            }
        }
    }
}

enum typeOfTheSelection: String, CaseIterable {
    case weekly = "Weekly"
    case monthly = "Monthly"
    case yearly = "Yearly"
}

struct choosenHistoryView: View {
    
    var selectedHistory: typeOfTheSelection
    
    var body: some View {
        switch selectedHistory {
        case .weekly:
            ChartWeekly()
        case .monthly:
            ChartMonthly() // Code Chart Monthly
        case .yearly:
            Chart() // Code Chart Yearly
        }
        
    }
    
}




struct segmentedControlView_Previews: PreviewProvider {
    static var previews: some View {
        segmentedControlView()
    }
}
