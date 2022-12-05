//
//  Category.swift
//  PetersFirstSwiftProject
//
//  Created by Peter Etherington 2 on 2022-11-27.
//

import Foundation

struct Category: Decodable, Identifiable {
    var id: String { name }
    var name: String
    var products: [Product] = []
}
