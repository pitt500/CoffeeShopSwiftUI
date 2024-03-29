//
//  WebService.swift
//  CoffeeShopSwiftUI
//
//  Created by projas on 12/2/19.
//  Copyright © 2019 projas. All rights reserved.
//

import Foundation

class WebService {
  
  private let stringUrl = "https://island-bramble.glitch.me/orders"
  
  func createCoffeeOrder(order: Order, completion: @escaping (CreateOrderResponse?) -> Void) {
    
    guard let url = URL(string: stringUrl) else {
      fatalError("Invalid URL")
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpBody = try? JSONEncoder().encode(order)
    
    URLSession.shared.dataTask(with: request) { data, response, error in
      
      guard let data = data, error == nil else {
        DispatchQueue.main.async {
          completion(nil)
        }
        return
      }
      
      let createOrderResponse = try? JSONDecoder().decode(CreateOrderResponse.self, from: data)
      DispatchQueue.main.async {
        completion(createOrderResponse)
      }
      
    }.resume()
  }
  
  func getAllOrders(completion: @escaping ([Order]?) -> Void) {
    
    guard let url = URL(string: stringUrl) else {
      completion(nil)
      return
    }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
      
      guard let data = data, error == nil else {
        DispatchQueue.main.async {
          completion(nil)
        }
        return
      }
      
      let orders = try? JSONDecoder().decode([Order].self, from: data)
      DispatchQueue.main.async {
        completion(orders)
      }
      
    }.resume()
    
  }
}
