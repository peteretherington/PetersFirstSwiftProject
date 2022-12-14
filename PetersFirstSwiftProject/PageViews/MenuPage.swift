//
//  MenuPage.swift
//  PetersFirstSwiftProject
//
//  Created by Peter Etherington 2 on 2022-11-27.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        VStack {
            AppTitle()
            NavigationView {
                List {
                    if menuManager.menu.count == 0 {
                        HStack {
                            Text("We couldn't fetch the data")
                        }
                    } else {
                        ForEach(menuManager.menu) { category in
                            if category.products.count > 0  {
                                Text(category.name)
                                    .listRowBackground(Color("Background"))
                                    .foregroundColor(Color("Secondary"))
                                    .padding()
                            }
                            
                            ForEach(category.products) { item in
                                ZStack {
                                    NavigationLink(destination: DetailsPage(product: item)) {
                                        EmptyView()
                                    }.opacity(0)
                                    ProductItem(product: item)
                                       .padding(.top)
                                       .padding(.leading)
                                       .padding(.bottom, 12)
                                }
                            }
                        }
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color("Background"))
                    }
                }
                    .background(Color("SurfaceBackground"))
            }
        }
            .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
            .environmentObject(MenuManager())
    }
}
