//
//  TableView.swift
//  Daily Stoics
//
//  Created by Irodakhon Umurzakova on 20/04/24.
//

import SwiftUI

struct TabC:Identifiable{
    var id = UUID()
    var category:String
    var tab:Tap
}
var Category:[TabC] = [
    TabC(category: "Favourite", tab: .Favourite),
    TabC(category: "Love", tab: .Love),
    TabC(category: "Gratitude", tab: .Gratitude),
    TabC(category: "Life", tab: .Life),
    TabC(category: "Success", tab: .Success)
]
enum Tap:String{
    case Favourite
    case Love
    case Gratitude
    case Life
    case Success
}

struct TableView: View {
    @Binding var categorySelected:Tap
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            
            HStack{
                ForEach(Category) { item in
                    ZStack{
                        Text(item.category).bold()
                            .font(.title2)
                            .foregroundColor(categorySelected==item.tab ? .white: .gray)
                            .padding(.horizontal,20)
                            .frame(height: 40)
                            .background(.black)
                            .cornerRadius(5)
                                RoundedRectangle(cornerRadius: 5)
                                    .strokeBorder(categorySelected == item.tab ? .black: .clear)
                                    .padding(.all, -3)
                                    .frame(height: 40)
                                
                                }
                                 .onTapGesture{
                                categorySelected = item.tab
                               }
                                     
                            }
                        }
            .padding(10)
    }
  }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView(categorySelected: .constant(.Love))
    }
}
