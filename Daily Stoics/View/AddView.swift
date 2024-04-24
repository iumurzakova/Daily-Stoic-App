//
//  AddView.swift
//  Daily Stoics
//
//  Created by Irodakhon Umurzakova on 20/04/24.
//

import SwiftUI

struct AddView: View {
    @EnvironmentObject var vm:CoredataDataModel
    @State var fontName = ""
    @State var textField = ""
    @State var imageName = ""
    @State var itemsSelected = ""
    var body: some View {
        VStack(spacing: 30){
            Button(action: {
                vm.addnewQuote(quote: textField, image: imageName, font: fontName)
                textField = ""
                
            }, label: {
                Text("Save").bold()
                    .foregroundColor(.white)
                    .padding(.horizontal,12)
                    .background(.black,in:Capsule())
            })
                .frame(maxWidth: .infinity,alignment: .trailing)
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
                .frame(width: 180, height: 150)
                .overlay(content: {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 173, height: 143)
                        .clipped()
                        .cornerRadius(10)
                })
                .overlay(content: {
                    Text(textField).bold()
                        .font(.custom(fontName, size: 25))
                        .padding(5)
                        .foregroundColor(.black)
                        .minimumScaleFactor(0.6)
                })
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(fontsA){ font in
                        ZStack{
                            Text("Verdana")
                                .font(.custom(font.fontname, size: 20))
                                .padding(5)
                                .onTapGesture{
                                    fontName = font.fontname
                                    itemsSelected = font.fontname
                                }
                            RoundedRectangle(cornerRadius: 5)
                                .strokeBorder(itemsSelected == font.fontname ? .black : .clear)
                                .frame(width: 92, height: 32)
                            
                        }
                    }
                }
            }
            
            ImagePicker(imagename: $imageName)
            TextField("Add new Quote", text:$textField)
                .multilineTextAlignment(.center)
                .textFieldStyle(.roundedBorder)
            Spacer()
        }
        .padding()
            
            
        }
    }


struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .environmentObject(CoredataDataModel())
    }
}
