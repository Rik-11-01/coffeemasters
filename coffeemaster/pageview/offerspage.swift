//
//  offerspage.swift
//  coffeemaster
//
//  Created by Ritik Raman on 28/06/23.
//

import SwiftUI

struct offerspage: View {
    var body: some View {
        NavigationView{
            List{
                offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                offer(title: "Welcome Gift", description: "25% off on your first order.")
            }
            .navigationTitle("Offer")
        }
    }
}

struct offerspage_Previews: PreviewProvider {
    static var previews: some View {
        offerspage()
    }
}
