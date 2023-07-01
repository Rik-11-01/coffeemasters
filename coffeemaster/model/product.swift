//
//  product.swift
//  coffeemaster
//
//  Created by Ritik Raman on 29/06/23.
//

import Foundation
    
struct product{
    var id:Int
    var name:String
    var description:String
    var price:Double
    var image:String
    var imageURL: URL {
           URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
       }
    
}
