//
//  DataService.swift
//  coder-swag
//
//  Created by Vlado Velkovski on 11/14/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import Foundation

class DataService {

    static let instance = DataService()
    
    private var categories: [Category] = [
        Category(title: "DIGITAL", imageName: "digital.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "SHIRTS", imageName: "shirts.png")
    ]
    
    private let hats: [Product] = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$18", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Hoodie Gray", price: "$18", imageName: "hat04.png")
    ]

    private let hoodies: [Product] = [
        Product(title: "Devslopes Logo Hoodie Gray", price: "$14", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$17", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie White", price: "$18", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$19", imageName: "hoodie04.png")
    ]
    
    private let shirts: [Product] = [
        Product(title: "Devslopes Logo Shirt Gray", price: "$14", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$17", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt White", price: "$18", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Shirt Black", price: "$19", imageName: "shirt04.png"),
        Product(title: "Devslopes Logo Shirt Black", price: "$19", imageName: "shirt05.png")
    ]

    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HATS": return hats
        case "HOODIES": return hoodies
        case "SHIRTS": return shirts
        case "DIGITAL": return digitalGoods
        default: return [Product]()
        }
    }
    
}
