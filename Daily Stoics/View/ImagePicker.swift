//
//  ImagePicker.swift
//  Daily Stoics
//
//  Created by Irodakhon Umurzakova on 20/04/24.
//

import SwiftUI

struct ImagePicker: View {
    @Binding var imagename:String
    var images:[String] = ["m1","m2","m3","m4","m5","m6"]
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(images,id:\.self){image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 98)
                        .clipped()
                        .cornerRadius(5)
                        .onTapGesture{
                            imagename = image
                        }
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: 5)
                                .strokeBorder(imagename == image ? .black: .clear)
                                .frame(width: 105, height: 95)
                        })
                        .padding(5)
                    
                }
            }
        }
    }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker(imagename: .constant("m1"))
    }
}
