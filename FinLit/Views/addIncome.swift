//
//  modalTry.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 22/11/21.
//

import SwiftUI
import CoreData

struct addIncome: View {
    //var context = NSManagedObjectContext()
    var context: NSManagedObjectContext
    
    @State var inputIncome: Float = 0
    @State var incomeDate: Date = Date()
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode)
    var presentationMode
    
    var body: some View {
        VStack{
            DatePicker("PickerView", selection: $incomeDate, displayedComponents: [.date,.hourAndMinute]).labelsHidden()
            Spacer()
            TextField("Income", value: $inputIncome, formatter: Utils.numberFormatter)
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
            .background(Color("MainColor"))
            .cornerRadius(11)
            
            
        }
    }
    
    private func onSaveTapped() {
        let logIncome = Income (context: viewContext)
        logIncome.date = self.incomeDate
        logIncome.amount = Float(NSDecimalNumber(value: self.inputIncome))
        
        do{
            try viewContext.save()
            print("income save to coredata")
        } catch let error as NSError{
            print(error.localizedDescription)
        }
        
        self.presentationMode.wrappedValue.dismiss()
    }
}

struct addIncome_Previews: PreviewProvider {
    static var previews: some View {
        let stack = PersistenceController()
        return addIncome(context: stack.container.viewContext)
    }
}

