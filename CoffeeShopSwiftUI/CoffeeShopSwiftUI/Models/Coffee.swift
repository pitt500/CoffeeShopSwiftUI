//
//  Coffee.swift
//  CoffeeShopSwiftUI
//
//  Created by projas on 12/2/19.
//  Copyright © 2019 projas. All rights reserved.
//

import Foundation

struct Coffee {
  let name: String
  let imageURL: String
  let price: Double
}

extension Coffee {
  
  static func all() -> [Coffee] {
    return [
      Coffee(name: "Cappuccino", imageURL: "Cappuccino", price: 2.5),
      Coffee(name: "Expresso", imageURL: "Expresso", price: 2.1),
      Coffee(name: "Regular", imageURL: "Regular", price: 1.0)
    ]
  }
  
}
