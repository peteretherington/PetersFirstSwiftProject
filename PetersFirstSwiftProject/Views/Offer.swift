//
//  Offer.swift
//  PetersFirstSwiftProject
//
//  Created by Peter Etherington 2 on 2022-11-27.
//

import SwiftUI

struct Offer: View {
    var title: String = ""
    var description: String = ""

    var body: some View {
        ZStack {
            Image("BackgroundPattern").frame(maxWidth: .infinity, maxHeight: 250).clipped()
            VStack {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                    .padding(.bottom, 20)
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
            }
        }
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Offer(title: "My offer", description: "This is a description")
                .previewLayout(.fixed(width: 350, height: 500))
                .preferredColorScheme(.light)
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
