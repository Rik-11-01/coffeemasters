//
//  cartmanager.swift
//  coffeemaster
//
//  Created by Ritik Raman on 29/06/23.
//

import Foundation

class cartmanager:ObservableObject{
    @Published var cart: [(product,Int)]=[]
}
