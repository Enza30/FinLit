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
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    //let category: Category
    @State var category : [CategoryItem] = []
    @State var catChecked = false
    
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
    var backButton : some View{
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack{
                Image(systemName: "chevron.backward")
                Text("Back")
            }
        }
    }

    var body: some View {
//            Category.allCases.forEach{ catList in
//                category.append(CategoryItem(
//                    image:catList.systemNameIcon,
//                    color:catList.color,
//                    title: catList.nameList,
//                    checked: false))
//            }
            ScrollView{
                List{
                    ForEach(category) { category in
                        
                        HStack{
                            Image(systemName: category.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 32, height: 32)
                                .padding(.all, 8)
                                .foregroundColor(category.color)
                                .background(category.color.opacity(0.1))
                                .cornerRadius(18)
                            
                            Text(category.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black.opacity(0.7))
                            
                            Spacer()
                            
                            Button(action: {
                                withAnimation{catChecked.toggle()}
                            }, label: {
                                ZStack{
                                    Circle()
                                        .stroke(category.checked ? Color.green : Color.gray, lineWidth: 1)
                                        .frame(width: 25, height: 25)
                                    
                                    if category.checked{
                                        Image(systemName: "checkmark.circle.fill")
                                            .font(.system(size: 25))
                                            .foregroundColor(Color.green)
                                    }
                                }
                            })
                                
                            
                        }
                        .padding(.horizontal)
                        .contentShape(Rectangle())
                        
                    }
                }
            }
//            .navigationBarItems(
//                leading: Button(action: self.onCancelTapped, label: {
//                    HStack {
//                        Image(systemName: "chevron.backward")
//                        Text("Back")
//                    }
//                }))
            .navigationTitle(" Add Categories")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton)
        

        
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

//struct ListCategory: View{
//
//    var body: some View{
//
//    }
//
//}

struct CategoryItem: Identifiable{
    var id = UUID().uuidString
    var image: String
    var color: Color
    var title: String
    var checked: Bool
    
}
