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

    func getCategories() -> [Category] {
        return categories
    }
    
}
