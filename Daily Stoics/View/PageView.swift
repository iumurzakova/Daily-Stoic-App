//
//  PageView.swift
//  Daily Stoics
//
//  Created by Irodakhon Umurzakova on 20/04/24.
//

import SwiftUI

struct PageView: View {
    @EnvironmentObject var vm: CoredataDataModel
    
    var body: some View {
        TabView{
          ForEach(Quotes){item in
            QuoteItemsView(item: Binding.constant(item))
          }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle((.page(backgroundDisplayMode: .always)))
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
            .environmentObject(CoredataDataModel())
    }
}
struct QuoteItemsView: View{
    @EnvironmentObject var vm:CoredataDataModel
    @Binding var item:MotivationModel
    @State private var showHeart = false
    var body: some View{
        ZStack{
            ZStack{
                Image(item.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .frame(height: 600)
                    .padding(.horizontal, -10)
                Text(item.titel).bold()
                    .font(.custom(item.font,size: 35))
                    .padding(5)
                    .foregroundColor(.black)
                    .frame(width: 360, height: 300)
                
            }
            .cornerRadius(30)
            .onTapGesture(count: 2){
                withAnimation(.easeInOut(duration: 1)){
                    showHeart.toggle()
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                    withAnimation(.easeInOut(duration: 1)){
                        showHeart.toggle()
                    }
                }
                vm.addnewQuote(quote: item.titel, image: item.image, font: item.font)
            }
            if showHeart{
                Image(systemName: "heart.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.red)
                
            }
        }
    }
}
