//
//  ContentView.swift
//  PetersFirstSwiftProject
//
//  Created by Peter Etherington 2 on 2022-11-25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var menuManager: MenuManager
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrdersPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Orders")
                }
                .badge(cartManager.products.count)
            InfoPage()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MenuManager())
            .environmentObject(CartManager())
    }
}
