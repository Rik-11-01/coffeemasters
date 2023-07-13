//
//  menumanager.swift
//  coffeemaster
//
//  Created by Ritik Raman on 29/06/23.
//

import Foundation
import Alamofire
class menumanager:ObservableObject{
    
    init(){
        refreshItemsFromNetwork()
    }
    
    @Published var menu:[categories]=[]
    func refreshItemsFromNetwork()  {
           AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
               .responseDecodable(of: [categories].self) { response in
                   if let menuFromNetwork = response.value {
                      // print(response.value)
                       self.menu = menuFromNetwork
                   }
               }
       }
}
