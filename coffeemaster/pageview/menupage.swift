//
//  menupage.swift
//  coffeemaster
//
//  Created by Ritik Raman on 29/06/23.
//

import SwiftUI

struct menupage: View {
    @EnvironmentObject var menumanager:menumanager
    var body: some View {
        NavigationView{
            List{
                ForEach(menumanager.menu) { categories in
                     Text(categories.name)
                    
                    ForEach(categories.products){ product in
                        NavigationLink{
                            details(product:product)
                        }label: {
                            productitem(product: product )
                        }
                    }
                }
                .navigationTitle("Products")
            }
        }
    }
}

struct menupage_Previews: PreviewProvider {
    static var previews: some View {
        menupage().environmentObject(menumanager())
    }
}
