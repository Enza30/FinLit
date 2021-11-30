//
//  modalTry.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 22/11/21.
//

import SwiftUI
import CoreData

struct modalTry: View {
    //var context = NSManagedObjectContext()
    
    var context: NSManagedObjectContext
    @State var input = ""
    @Environment(\.dismiss) var dismiss
    @State var inputExpense: Double = 0
    
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode)
    var presentationMode
    
    var body: some View {
        VStack{
            Spacer()
            TextField("Add Income", value: $inputExpense, formatter: Utils.numberFormatter)
                .padding()
                .keyboardType(.decimalPad)
                .font(.largeTitle)
                .textFieldStyle(.roundedBorder)
            Spacer()
            Button("Save"){
                onSaveTapped()
              
            }
            .padding(.horizontal, 100)
            .padding(.vertical)
            .foregroundColor(.white)
            .background(Color("MainColor"))
            .cornerRadius(11)
            
            
        }
    }
    private func onSaveTapped() {
        let logIncome = Expense (context: viewContext)
        logIncome.amount = NSDecimalNumber(value: self.inputExpense)
        
        do{
            try viewContext.save()
            print("income save to coredata")
        } catch let error as NSError{
            print(error.localizedDescription)
        }
        
        self.presentationMode.wrappedValue.dismiss()
    }

}

struct modalTry_Previews: PreviewProvider {
    static var previews: some View {
        let stack = PersistenceController()
        return modalTry(context: stack.container.viewContext)
    }
}

