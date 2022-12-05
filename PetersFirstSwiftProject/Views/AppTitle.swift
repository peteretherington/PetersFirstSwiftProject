//
//  AppTitle.swift
//  PetersFirstSwiftProject
//
//  Created by Peter Etherington 2 on 2022-11-27.
//

import SwiftUI

struct AppTitle: View {
    var body: some View {
        HStack {
            Spacer()
            Image("Logo")
            Spacer()
        }
            .padding(4)
            .listRowBackground(Color("Secondary"))
            .background(Color("Secondary"))
    }
}

struct AppTitle_Previews: PreviewProvider {
    static var previews: some View {
        AppTitle()
    }
}
