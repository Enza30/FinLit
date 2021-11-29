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
    
    @State var inputIncome: Double = 0
    @State var incomeDate: Date = Date()
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode)
    var presentationMode
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center){
                Spacer()
                Image(systemName: "banknote.fill")
                    .resizable()
                    .foregroundColor(Color("MainColor"))
                    .frame(width: 80, height: 80)
                    .padding(10)
                DatePicker("PickerView", selection: $incomeDate, displayedComponents: [.date,.hourAndMinute]).labelsHidden()
                TextField("Add Income", value: $inputIncome, formatter: Utils.numberFormatter)
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
                
                
            }
            .navigationBarItems(
                leading: Button(action: self.onCancelTapped, label: {
                    Text("Cancel")
                }))
            .navigationTitle("Add Income")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private func onCancelTapped(){
        self.presentationMode.wrappedValue.dismiss()
    }
    
    private func onSaveTapped() {
        let logIncome = Income (context: viewContext)
        logIncome.date = self.incomeDate
        logIncome.amount = NSDecimalNumber(value: self.inputIncome)
        
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
.previewInterfaceOrientation(.portrait)
    }
}

