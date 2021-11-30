//
//  inputCategory.swift
//  FinLit
//
//  Created by Farendza Muda on 23/11/21.
//

import SwiftUI
import CoreData

struct inputCategory: View {
    
    var context : NSManagedObjectContext
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) private var viewContext
    
    //let category: Category
    @State var category = [
        CategoryItem(title: .Beauty, isChecked: false),
        
        CategoryItem(title: .Clothes, isChecked: false),
        
        CategoryItem(title: .Drink, isChecked: false),
        
        CategoryItem(title: .Food, isChecked: false),
        
        CategoryItem(title: .Groceries, isChecked: false),
        
        CategoryItem(title: .Health, isChecked: false),
        
        CategoryItem(title: .Phone, isChecked: false),
        
        CategoryItem(title: .Rent, isChecked: false),
        
        CategoryItem(title: .Snacks, isChecked: false),
        
        CategoryItem(title: .Social, isChecked: false),
        
        CategoryItem(title: .Stationary, isChecked: false),
        
        CategoryItem(title: .Transport, isChecked: false),
        
        CategoryItem(title: .Travel, isChecked: false)
    ]
    
    //    func shownCategory() -> ()  {
    //        Category.allCases.forEach{ catList in
    //            category.append(CategoryItem(
    //                image:catList.systemNameIcon,
    //                color:catList.color,
    //                title: catList.nameList,
    //                checked: false))
    //
    //        }
    //    }
    
    var body: some View {
        ScrollView{
            ForEach(category) { category in
                
                CategoriesView(isCategories: category)
                
            }
        }
        .navigationBarTitle("Add Category")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: self.onCancelTapped, label: {
                HStack{
                    Image(systemName: "chevron.backward")
                    Text("Back")
                }
            }), trailing:
                        Button(action: {}, label: {
                    Text("Save")
            })
            )
    }
    
    private func onCancelTapped(){
        self.presentationMode.wrappedValue.dismiss()
    }
    
    private func onSaveTapped(){
        let logExpense = Expense (context: viewContext)
        //logExpense.category = self.category
        
        do {
            try viewContext.save()
            print("Category save to Expense")
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
        let logBudget = Budget (context: viewContext)
        //logBudget.category = self.category
        
        do {
            try viewContext.save()
            print("Category save to Budget")
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
}

struct inputCategory_Previews: PreviewProvider {
    static var previews: some View {
        let stack = PersistenceController()
        return inputCategory(context: stack.container.viewContext)
        
    }
}

struct CategoriesView: View {
    
    @State var isCategories: CategoryItem
    
    var body: some View{
        HStack{
            HStack(spacing:10) {
                
                Image(isCategories.title.rawValue)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.orange)
                    .frame(width:28, height: 28)
                    .padding(.horizontal, 5)
                    .padding(.leading,5)
                
                Text(isCategories.title.rawValue)
                    .font(.system(size: 14)).bold()
                    .padding()
                
                Spacer()
                
                ZStack{
                    Rectangle()
                        .stroke(isCategories.isChecked ? Color.green : Color.gray, lineWidth: 1)
                        .frame(width: 25, height: 25)
                        .padding(.trailing, 10)
                    
                    if isCategories.isChecked{
                        Image(systemName: "checkmark.square.fill")
                            .font(.system(size: 25))
                            .foregroundColor(Color.green)
                            .padding(.trailing, 10)
                    }
                }
                
                
            }
            .padding(.horizontal)
            .contentShape(Rectangle())
            .onTapGesture (perform: {
                isCategories.isChecked.toggle()
            })
        }
        
    }
}

struct CategoryItem {
    var title: TitleCategory
    var isChecked: Bool
    
    enum TitleCategory : String {
        case Beauty = "beauty"
        case Food = "food"
        case Drink = "drink"
        case Groceries = "groceries"
        case Health = "health"
        case Clothes = "clothes"
        case Phone = "phones"
        case Rent = "rent"
        case Snacks = "snacks"
        case Social = "social"
        case Stationary = "stationary"
        case Transport = "transport"
        case Travel = "travel"
    }
    
    
    
}


