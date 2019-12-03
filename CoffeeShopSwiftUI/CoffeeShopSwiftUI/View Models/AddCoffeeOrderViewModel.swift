//
//  AddCoffeeOrderViewModel.swift
//  CoffeeShopSwiftUI
//
//  Created by projas on 12/2/19.
//  Copyright © 2019 projas. All rights reserved.
//

import Foundation

class AddCoffeeOrderViewModel: ObservableObject {
  
  var name = ""
  @Published var size = "Medium"
  @Published var coffeeName = ""
  
  private var webService: WebService
  
  var coffeeList: [CoffeeViewModel] {
    return Coffee.all().map(CoffeeViewModel.init)
  }
  
  init() {
    self.webService = WebService()
  }
  
  var total: Double {
    return calculateTotalPrice()
  }
  
  func placeOrder() {
    let order = Order(name: name, size: size, coffeeName: coffeeName, total: total)
    
    webService.createCoffeeOrder(order: order) { _ in
      
    }
  }
  
  private func priceForSize() -> Double {
    let prices = ["Small": 2.0, "Medium": 3.0, "Large": 4.0]
    
    return prices[size]!
  }
  
  private func calculateTotalPrice() -> Double {
    let coffeeVM = coffeeList.first { $0.name == coffeeName }
    
    if let coffeeVM = coffeeVM {
      return coffeeVM.price * priceForSize()
    } else {
      return 0.0
    }
  }
}
