//
//  Cantata.swift
//  VendingMachineApp
//
//  Created by zombietux on 2021/03/01.
//

import Foundation

class Cantata: Coffee {
    
    private let milkContent: Int
    
    init(milkContent: Int) {
        self.milkContent = milkContent
        super.init(brand: "롯데", volume: 350, price: 2000, name: "콘트라베이스 콜드브루", manufacturedAt: Date(), caffeinContent: 200)
    }
}
