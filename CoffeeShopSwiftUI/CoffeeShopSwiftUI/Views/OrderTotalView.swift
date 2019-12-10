//
//  OrderTotalView.swift
//  CoffeeShopSwiftUI
//
//  Created by projas on 12/10/19.
//  Copyright © 2019 projas. All rights reserved.
//

import SwiftUI

struct OrderTotalView: View {
  
  let total: Double
  
  var body: some View {
    HStack(alignment: .center) {
      Spacer()
      Text(String(format: "$%.2f", self.total))
        .font(.title)
        .foregroundColor(Color.green)
      Spacer()
    }.padding(10)
  }
}

struct OrderTotalView_Previews: PreviewProvider {
  static var previews: some View {
    OrderTotalView(total: 44.45)
  }
}
