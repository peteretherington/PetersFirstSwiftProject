//
//  OrderItem.swift
//  PetersFirstSwiftProject
//
//  Created by Peter Etherington 2 on 2022-11-27.
//

import SwiftUI

struct OrderItem: View {
    @EnvironmentObject var cartManager: CartManager
    var item: (Product, Int)
    
    var body: some View {
        HStack {
            Text("\(item.1)")
            Text("\(item.0.name)")
            Spacer()
            Text("$\(Double(item.1) * item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .padding()
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (Product(id: 1, name: "Black Tea", price: 1.25, image: ""), 2))
            .environmentObject(CartManager())
            .padding()
    }
}
