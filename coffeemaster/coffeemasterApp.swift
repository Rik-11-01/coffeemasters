//
//  coffeemasterApp.swift
//  coffeemaster
//
//  Created by Ritik Raman on 28/06/23.
//

import SwiftUI

@main
struct coffeemasterApp: App {
    var menu=menumanager()
     var cart=cartmanager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menu)
                .environmentObject(cart)
        }
    }
}
