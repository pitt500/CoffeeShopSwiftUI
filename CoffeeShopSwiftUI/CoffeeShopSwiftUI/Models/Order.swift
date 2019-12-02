//
//  Order.swift
//  CoffeeShopSwiftUI
//
//  Created by projas on 12/2/19.
//  Copyright © 2019 projas. All rights reserved.
//

import Foundation

struct Order: Codable {
  let name: String
  let size: String
  let coffeeName: String
  let total: Double
}
