//
//  TOP.swift
//  VendingMachineApp
//
//  Created by zombietux on 2021/02/26.
//

import Foundation

class TOP: Coffee {
    
    private let calorie: Int
    
    init(calorie: Int) {
        self.calorie = calorie
        super.init(brand: "Maxim", volume: 275, price: 2000, name: "T.O.P 에스프레소", manufacturedAt: Date(), caffeinContent: 200)
    }
}
