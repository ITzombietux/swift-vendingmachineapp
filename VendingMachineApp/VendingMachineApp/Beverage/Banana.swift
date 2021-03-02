//
//  Banana.swift
//  VendingMachineApp
//
//  Created by zombietux on 2021/02/26.
//

import Foundation

class Banana: Milk {
    
    private let countryOfOrigin: String
    
    init(countryOfOrigin: String) {
        self.countryOfOrigin = countryOfOrigin
        super.init(brand: "빙그레", volume: 240, price: 1000, name: "바나나맛 우유", manufacturedAt: Date(), isLowfat: false)
    }
}
