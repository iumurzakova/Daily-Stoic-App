//
//  LovedQView.swift
//  Daily Stoics
//
//  Created by Irodakhon Umurzakova on 20/04/24.
//

import SwiftUI

struct LovedQView: View {
@EnvironmentObject var vm:CoredataDataModel
      
        var colums : [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]
        var body: some View {
            LazyVGrid(columns: colums){
                ForEach(InspirationQuotes){ item in
                    ZStack{
                        Image(item.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 173, height: 143)
                            .background(.black)
                            .cornerRadius(10)
                            .overlay(content: {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.black)
                                    .padding(.all, -3)
                            })
                        Text(item.titel)
                            .foregroundColor(.black)
                            .font(.custom(item.font, size: 25))
                            .frame(width: 163, height: 133)
                        
                    }
                }
            }
            .padding(5)
            
        }
    }

struct LovedQView_Previews: PreviewProvider {
    static var previews: some View {
        LovedQView()
    }
}

