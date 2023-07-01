//
//  menupage.swift
//  coffeemaster
//
//  Created by Ritik Raman on 29/06/23.
//

import SwiftUI

struct menupage: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    NavigationLink{
                    details()
                    }label: {
                        productitem(product: product(id: 1, name: "rik", description: "rok", price: 1.24, image: ""))
                    }
                }
            }
        .navigationTitle("Products")
        }

    }
}

struct menupage_Previews: PreviewProvider {
    static var previews: some View {
        menupage()
    }
}
