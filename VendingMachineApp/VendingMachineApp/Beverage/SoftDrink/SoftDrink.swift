//
//  SoftDrink.swift
//  VendingMachineApp
//
//  Created by zombietux on 2021/02/26.
//

import Foundation

class SoftDrink: Beverage {
    
    private let package: Packages
    
    enum Packages: String {
        case glass = "glass"
        case can = "can"
        case plastic = "plastic"
    }
    
    init(brand: String, volume: Int, price: Int, name: String, manufacturedAt: Date, temparature: Int, calories: Int, isLowfat: Bool, package: Packages) {
        self.package = package
        super.init(brand: brand, volume: volume, price: price, name: name, manufacturedAt: manufacturedAt, temparature: temparature, calories: calories)
    }
    
    required init?(coder: NSCoder) {
        self.package = Packages(rawValue: coder.decodeObject(forKey: "softDrinkPackage") as? String ?? "") ?? Packages.can
        super.init(coder: coder)
    }
    
    override func encode(with coder: NSCoder) {
        coder.encode(package.rawValue, forKey: "softDrinkPackage")
        super.encode(with: coder)
    }
}
