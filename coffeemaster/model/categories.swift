//
//  categories.swift
//  coffeemaster
//
//  Created by Ritik Raman on 29/06/23.
//

import Foundation

struct categories:Codable,Identifiable{
    
    var name:String
    var products:[product]
    var id: String{
        return self.name
    }
    
}
