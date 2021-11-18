////
////  Chart.swift
////  FinLit
////
////  Created by Farendza Muda on 10/11/21.
////
import SwiftUI
import SwiftUICharts

struct Chart: View {
    

    var data2: [(String,Double)] = [("August 1",25000),("August 2",45000),("August 3",35000),("August 4",50000),("August 5",100000),("August 6",75000),("August 7",20000),("August 8",110000),("August 9",89000),("August 10",14000),("August 11",45000)]

    

    var body: some View {
        VStack {
            BarChartView(data: ChartData(values: data2), title: "Expense August", legend: "", style: Styles.barChartStyleOrangeLight, form: CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height/2.5))
    }
}

struct Chart_Previews: PreviewProvider {
    static var previews: some View {
        Chart()
    }
}
}
