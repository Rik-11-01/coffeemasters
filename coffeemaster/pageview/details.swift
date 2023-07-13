//
//  details.swift
//  coffeemaster
//
//  Created by Ritik Raman on 29/06/23.
//

import SwiftUI

struct details: View {
    @State var quantity = 1
    var product: product
    var body: some View {
        ScrollView {
            AsyncImage(url:product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .clipped()
                .padding(.top, 32)
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            HStack {
                Text("$\(product.price, specifier:"%.2f") ea")
                Stepper(value: $quantity, in: 1...10) { }
                    .frame(alignment: .leading)
            }
            .frame(maxWidth: 105)
            .multilineTextAlignment(.trailing)
            .padding()
                            
            Text("Subtotal $\(Double(quantity)*product.price,specifier:"%.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                //TODO
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }        
    }
}

struct details_Previews: PreviewProvider {
    static var previews: some View {
        details(product: product(id: 1, name: "rik", description:" raman", price: 1.25, image:" "))
    }
}
