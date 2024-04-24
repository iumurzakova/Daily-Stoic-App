//
//  TabBArView.swift
//  Daily Stoics
//
//  Created by Irodakhon Umurzakova on 20/04/24.
//

import SwiftUI
enum NTab: String,CaseIterable{
    case house
    case star
    case plus
}

struct TabBArView: View {
    @State var selectionTab:NTab = .house
    var filliicon:String{
        selectionTab.rawValue + ".circle.fill"
    }
    var body: some View {
        ZStack{
            if selectionTab == .house{
                HomeView()
            }else if selectionTab == .star{
                PageView()
            }else if selectionTab == .plus{
                AddView()
            }
          ZStack{
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 200, height: 60)
            HStack(spacing: 28){
                ForEach(NTab.allCases,id:\.rawValue) { item in
                    Button(action: {
                        withAnimation(.easeIn(duration: 0.1)){
                            selectionTab = item
                        }
                    },label: {
                        Image(systemName: selectionTab == item ? filliicon : item.rawValue)
                            .scaleEffect(selectionTab == item ? 1.25 : 1.0)
                            .foregroundColor(selectionTab == item ? .white : .gray)
                            .font(.system(size: 28))
                        
                    })
                }
            }
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        
     }
    }
}

struct TabBArView_Previews: PreviewProvider {
    static var previews: some View {
        TabBArView()
            .environmentObject(CoredataDataModel())
    }
}
