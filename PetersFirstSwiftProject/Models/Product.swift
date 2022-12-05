//
//  Product.swift
//  PetersFirstSwiftProject
//
//  Created by Peter Etherington 2 on 2022-11-27.
//

import Foundation

struct Product: Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String?
    var price: Double
    var image: String = ""
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
