//
//  OffersPage.swift
//  PetersFirstSwiftProject
//
//  Created by Peter Etherington 2 on 2022-11-27.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        VStack {
            AppTitle()
            NavigationView {
                List {
                    Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                    Offer(title: "Welcome Gift", description: "25% off on your first order.")
                }.navigationTitle("Offers")
            }
        }
    }
}

struct OffersPage_Previews: PreviewProvider {
    static var previews: some View {
        OffersPage()
    }
}
