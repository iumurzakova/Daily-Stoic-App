//
//  Daily_StoicsApp.swift
//  Daily Stoics
//
//  Created by Irodakhon Umurzakova on 20/04/24.
//

import SwiftUI

@main
struct Daily_StoicsApp: App {
    @StateObject var vm: CoredataDataModel = CoredataDataModel()
    var body: some Scene {
        WindowGroup {
            //ContentView()
        TabBArView()
           // SplashScreen()
            
                .environmentObject(CoredataDataModel())
        }
    }
}
