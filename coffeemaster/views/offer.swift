//
//  offer.swift
//  coffeemaster
//
//  Created by Ritik Raman on 28/06/23.
//

import SwiftUI

struct offer: View {
    var title=""
    var description=""
    var body: some View {
        ZStack{
            Image("backgroundpattern")
                .frame(maxWidth: .infinity,maxHeight: 200)
                .clipped()
            VStack {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("Cardbackground"))
                Text(description)
                    .padding()
                    .background(Color("Cardbackground"))
                
            }
        }
    }
}

struct offer_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            offer(title:"offers", description: "100% off saved")
                .frame(width: nil)
                .previewLayout(.fixed(width: 350, height: 200))
                .preferredColorScheme(.light)
        }
        
    }
}
