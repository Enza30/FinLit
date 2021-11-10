//
//  Chart.swift
//  FinLit
//
//  Created by Farendza Muda on 10/11/21.
//
import SwiftUICharts
import SwiftUI

struct Chart: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading){
                    // Legend
                    let expense = Legend(color: .orange, label: "Expense")
//                    let iphone8 = Legend(color: .blue, label: "iPhone 8")
//                    let iphone7 = Legend(color: .blue, label: "iPhone 7")
//                    let iphone12 = Legend(color: .blue, label: "iPhone 12")
//                    let iphone13 = Legend(color: .blue, label: "iPhone 13")
//                    let iphone11 = Legend(color: .blue, label: "iPhone 11")
                    
                    // DataPoints
                    let points: [DataPoint] = [
                        .init(value: 20000, label: "1", legend: expense),
                        .init(value: 75000, label: "2", legend: expense),
                        .init(value: 75000, label: "3", legend: expense),
                        .init(value: 50000, label: "4", legend: expense),
                        .init(value: 10000, label: "5", legend: expense),
                        .init(value: 45000, label: "6", legend: expense),
                        .init(value: 80000, label: "7", legend: expense)
                    ]
                    //Bar
                    Section(header: Text("Monthly Expense")) {
                        BarChartView(dataPoints: points)
                            .padding()
                            .frame(height: UIScreen.main.bounds.size.height/3)
                    }.padding(.leading)
                    Divider()
                    
                    Text("Highest Expenses")
                        .font(.headline)
                        .padding(.leading)
                    
                    Spacer()
                    
                    kategori_baru()
                }
                    
            }
            .navigationTitle("Evaluation")
        }
    }
}

struct Chart_Previews: PreviewProvider {
    static var previews: some View {
        Chart()
    }
}
