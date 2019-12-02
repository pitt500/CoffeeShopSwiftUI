//
//  ContentView.swift
//  CoffeeShopSwiftUI
//
//  Created by projas on 12/2/19.
//  Copyright © 2019 projas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject private var orderListVM = OrderListViewModel()
  
  var body: some View {
    NavigationView {
      OrderListView(orders: self.orderListVM.orders)
      .navigationBarTitle("Coffee Orders")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
