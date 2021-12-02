//
//  addExpense.swift
//  FinLit
//
//  Created by Farendza Muda on 01/12/21.
//

import SwiftUI
import CoreData

struct addExpense: View {
    
    var context : NSManagedObjectContext
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode)
    var presentationMode
    @State var inputExpense: Double = 0
    @State var expenseDate: Date = Date()
    
    
    @State var choosenTitle : String
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center){
                Spacer()
                Image(choosenTitle)
                    .resizable()
                    .foregroundColor(Color("MainColor"))
                    .frame(width: 80, height: 80)
                    .padding(10)
                DatePicker("PickerView", selection: $expenseDate, displayedComponents: [.date,.hourAndMinute]).labelsHidden()
                TextField("Add Income", value: $inputExpense, formatter: Utils.numberFormatter)
                    .padding()
                    .keyboardType(.decimalPad)
                    .font(.largeTitle)
                    .textFieldStyle(.roundedBorder)
                    .labelsHidden()
                    
                Spacer()
                Button(action: self.onSaveTapped, label: {
                    Text("Save")
                })
                .padding(.horizontal, 100)
                .padding(.vertical)
                .foregroundColor(.white)
                .background(Color("ActionColor"))
                .cornerRadius(11)
                
                
            }.onAppear{
                print("sent to addexpense view: \($choosenTitle)")
            }
            .navigationBarItems(
                leading: Button(action: self.onCancelTapped, label: {
                    Text("Cancel")
                }))
            .navigationTitle("Add Expense")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private func onCancelTapped(){
        self.presentationMode.wrappedValue.dismiss()
    }
    
    private func onSaveTapped(){
        let logExpense = Expense(context: context)
        logExpense.categoryExpense = self.choosenTitle
        logExpense.date = self.expenseDate
        logExpense.amount = NSDecimalNumber(value: self.inputExpense)
        PersistenceController.shared.save()
        print("Expense is Saved")
        self.presentationMode.wrappedValue.dismiss()
    }
    
}

//struct addExpense_Previews: PreviewProvider {
//    static var previews: some View {
//        let stack = PersistenceController()
//        return addExpense(context: stack.container.viewContext)
//.previewInterfaceOrientation(.portrait)
//    }
//}
