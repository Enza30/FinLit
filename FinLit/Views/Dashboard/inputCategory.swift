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
    
    //let category: Category
    @State var category = [
        CategoryItem(image: "beauty", color: Color("ActionColor"), title: "Beauty", isChecked: false),
        
        CategoryItem(image: "clothes", color: Color("ActionColor"), title: "Clothes", isChecked: false),
        
        CategoryItem(image: "drink",color: Color("ActionColor"),  title: "Drink", isChecked: false),
        
        CategoryItem(image: "food",color: Color("ActionColor"),  title: "Food", isChecked: false),
        
        CategoryItem(image: "groceries",color: Color("ActionColor") , title: "Groceries", isChecked: false),
        
        CategoryItem(image: "health", color: Color("ActionColor"),  title: "Health", isChecked: false),
        
        CategoryItem(image: "phone", color: Color("ActionColor"), title: "Phone", isChecked: false),
        
        CategoryItem(image: "rent",color: Color("ActionColor"),  title: "Rent", isChecked: false),
        
        CategoryItem(image: "snacks", color: Color("ActionColor"), title: "Snacks", isChecked: false),
        
        CategoryItem(image: "social",color: Color("ActionColor"), title: "Social", isChecked: false),
        
        CategoryItem(image: "stationery",color: Color("ActionColor"), title: "Stationary", isChecked: false),
        
        CategoryItem(image: "transport", color: Color("ActionColor"), title: "Transport", isChecked: false),
        
        CategoryItem(image: "travel", color: Color("ActionColor"), title: "Travel", isChecked: false)
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
        }.navigationBarTitle("Add Category")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
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
                
                Image(isCategories.image)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.orange)
                    .frame(width:28, height: 28)
                    .padding(.horizontal, 5)
                    .padding(.leading,5)
                
                Text(isCategories.title)
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

struct CategoryItem: Identifiable{
    var id = UUID().uuidString
    var image: String
    var color: Color
    var title: String
    var isChecked: Bool
    
}
