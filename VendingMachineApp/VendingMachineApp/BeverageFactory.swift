//
//  DrinkFactory.swift
//  VendingMachineApp
//
//  Created by zombietux on 2021/02/26.
//

import Foundation

protocol BeverageFactory {
    func produce() -> Beverage
}

class BananaMilkFactory: BeverageFactory {
    func produce() -> Beverage {
        return Banana(countryOfOrigin: "필리핀")
    }
}

class StrawberryMilkFactory: BeverageFactory {
    func produce() -> Beverage {
        return Strawberry(strawberryContent: 15)
    }
}

class ColaFactory: BeverageFactory {
    func produce() -> Beverage {
        return Cola(sugarFree: false)
    }
}

class CiderFactory: BeverageFactory {
    func produce() -> Beverage {
        return Cider(sugars: 32)
    }
}

class TopCoffeeFactory: BeverageFactory {
    func produce() -> Beverage {
        return TOP(calorie: 3)
    }
}

class CantataCoffeeFactory: BeverageFactory {
    func produce() -> Beverage {
        return Cantata(milkContent: 15)
    }
}
