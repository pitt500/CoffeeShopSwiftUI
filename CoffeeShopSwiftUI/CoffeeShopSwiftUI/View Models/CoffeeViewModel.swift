//
//  CoffeeViewModel.swift
//  CoffeeShopSwiftUI
//
//  Created by projas on 12/2/19.
//  Copyright © 2019 projas. All rights reserved.
//

import Foundation

class CoffeeListViewModel {
  var coffeeList: [CoffeeViewModel] = []
}

struct CoffeeViewModel {
  var coffee: Coffee
  
  init(coffee: Coffee) {
    self.coffee = coffee
  }
  
  var name: String {
    return coffee.name
  }
  
  var imageURL: String {
    return coffee.imageURL
  }
  
  var price: Double {
    return coffee.price
  }
}
