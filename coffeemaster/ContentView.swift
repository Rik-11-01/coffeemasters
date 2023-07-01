//
//  ContentView.swift
//  coffeemaster
//
//  Created by Ritik Raman on 28/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        TabView{
            menupage()
                   .tabItem {
                       Image(systemName: "cup.and.saucer")
                       Text("Menu")
                   }
            offerspage()
                   .tabItem {
                       Image(systemName: "tag")
                       Text("Offers")
                   }
            orderpage()
                   .tabItem {
                       Image(systemName: "cart")
                       Text("My Order")
                   }
            information()
                   .tabItem {
                       Image(systemName: "info.circle")
                       Text("Info")
                   }
        }
    }
}

//struct greeting: View{
//    @State var name=""
//
//    var body: some View{
//        VStack{
//            TextField("Enter your Name", text: $name)
//            Text("Hi \(name)")
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
