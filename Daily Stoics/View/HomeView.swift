//
//  HomeView.swift
//  Daily Stoics
//
//  Created by Irodakhon Umurzakova on 20/04/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm:CoredataDataModel
    @State var itemSelected:Tap = .Favourite
    
    var body: some View {
        VStack{
            ScrollView{
                TableView(categorySelected: $itemSelected)
                if  itemSelected == .Favourite{
                    FavQView()
                }else if itemSelected == .Love{
                    LovedQView()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(CoredataDataModel())
    }
}
