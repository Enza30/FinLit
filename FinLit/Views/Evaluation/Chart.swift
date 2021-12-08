////
////  Chart.swift
////  FinLit
////
////  Created by Farendza Muda on 10/11/21.
////
import SwiftUI
import SwiftUICharts

struct Chart: View {
    

    var data2: [(String,Double)] = [("January 2022",25000),("February 2022",45000),("March 2022",35000),("April 2022",50000),("May 2022",100000),("June 2022",75000),("July 2022",20000),("August 2022",110000),("September 2022",89000),("October 2022",14000),("Novomber 2022",45000),("December 2022",69000)
    ]

    

    var body: some View {
        VStack {
            BarChartView(
                data: ChartData(values: data2),
                title: "Expense August",
                legend: "Quaterly",
                style: Styles.barChartStyleOrangeLight,
                form: CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height/2.5),
                cornerImage: Image(systemName: ""))
        }
    }
}


struct ChartWeekly: View {
    
    var data3: [(String,Double)] = [("August 1",25000),("August 2",45000),("August 3",35000),("August 4",50000),("August 5",100000),("August 6",75000),("August 7",20000)]
    
    var body: some View {
        VStack {
            BarChartView(
                data: ChartData(values: data3),
                title: "Expense August",
                legend: "Quaterly",
                style: Styles.barChartStyleOrangeLight,
                form: CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height/2.5),
                cornerImage: Image(systemName: ""))
        }
    }
}

struct ChartMonthly: View {
    var data4: [(String,Double)] = [("August 1",25000),("August 2",45000),("August 3",35000),("August 4",50000),("August 5",100000),("August 6",75000),("August 7",20000),("August 8",110000),("August 9",89000),("August 10",14000),("August 11",45000),("August 12",69000),("August 13",45000),("August 14",35000),("August 15",50000),("August 16",100000),("August 17",75000),("August 18",20000),("August 19",110000),("August 20",89000),("August 21",14000),("August 22",45000),("August 23",69000),("August 24",45000),("August 25",35000),("August 26",50000),("August 27",100000),("August 28",75000),("August 29",20000),("August 30",110000)
    ]
    
    var body: some View {
        VStack {
            BarChartView(
                data: ChartData(values: data4),
                title: "Expense August", legend: "Quaterly",
                style: Styles.barChartStyleOrangeLight,
                form: CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height/2.5),
                cornerImage: Image(systemName: ""))
        }
    }
}

struct Chart_Previews: PreviewProvider {
    static var previews: some View {
        Chart()
    }
}

