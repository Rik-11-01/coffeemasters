//
//  menumanager.swift
//  coffeemaster
//
//  Created by Ritik Raman on 29/06/23.
//

import Foundation

class menumanager:ObservableObject{
    @Published var menu:[categories]=[
        categories(name: "HOtCofee", products: [
            product(id: 0, name: "", description: "", price: 1.25, image: ""),
            product(id: 0, name: "", description: "", price: 1.25, image: ""),
            product(id: 0, name: "", description: "", price: 1.25, image: ""),
            product(id: 0, name: "", description: "", price: 1.25, image: ""),
            product(id: 0, name: "", description: "", price: 1.25, image: ""),
        ])
        
    ]
}
