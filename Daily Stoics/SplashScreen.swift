////
////  SplashScreen.swift
////  Daily Stoics
////
////  Created by Irodakhon Umurzakova on 24/04/24.
////
//
//import SwiftUI
//
//struct SplashScreen: View {
//    @State private var isActive = false
//    @State private var size = 0.8
//    @State private var opacity = 0.5
//    
//    var body: some View {
//        ZStack{
//            Color(UIColor.systemPurple)
//                .ignoresSafeArea()
//            
//        if isActive{
//            TabBArView()
//        } else {
//            VStack{
//                VStack{
//                    Image("appstore.pgn")
//                        .font(.system(size:80))
//                        .foregroundColor(.red)
//                    Text("Daily Stoic")
//                        .font(Font.custom("Baskerville-Bold", size: 26))
//                        .foregroundColor(.black.opacity(0.80))
//                    
//                }
//                .scaleEffect(size)
//                .opacity(opacity)
//                .onAppear{
//                    withAnimation(.easeIn(duration: 1.2)){
//                        self.size=0.9
//                        self.opacity=1.0
//                    }
//                }
//            }
//            .onAppear{
//                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
//                self.isActive = true
//               }
//            }
//            
//        }
//        
//      }
//    }
//}
//
//struct SplashScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SplashScreen()
//    }
//}
