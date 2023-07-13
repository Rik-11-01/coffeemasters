//
//  productitem.swift
//  coffeemaster
//
//  Created by Ritik Raman on 29/06/23.
//

import SwiftUI

struct productitem: View {
    
    var product:product
    
    var body: some View {
        VStack{
            AsyncImage(url:product.imageURL)
                        .frame(width: 300, height: 150)
                        .background(Color("AccentColor"))
                    HStack {
                        VStack(alignment: .leading) {
                            Text(product.name)
                                .font(.title3)
                                .bold()
                            Text("$\(product.price,specifier: "%.2f")")
                                .font(.caption)

                        }.padding(8)
                        Spacer()
                    }
                }
                .background(Color("SurfaceBackground"))
                .cornerRadius(10)
                .padding(.trailing)
            }
}

struct productitem_Previews: PreviewProvider {
    static var previews: some View {
        productitem(product: product(id: 1, name: "rik", description: "rock", price: 10.25, image: ""))
    }
}
