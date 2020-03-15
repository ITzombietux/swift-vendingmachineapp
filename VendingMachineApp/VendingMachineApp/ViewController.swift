//
//  ViewController.swift
//  VendingMachineApp
//
//  Created by kimdo2297 on 2020/03/04.
//  Copyright © 2020 Jason. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var beverageNumberLabels: [BeverageNumberLabel]!
    
    @IBAction func plusBeverageButtonTapped(_ sender: PlusBeverageButton) {
        if let beverage = sender.beverage() {
            vendingMachine.addToStock(beverage: beverage)
        }
    }
    
    private var vendingMachine = VendingMachine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(forName: Notification.Name.beveragesChanged,
                                               object: nil, queue: nil) { [weak self] (notification) in
                                                self?.changeLabelNumber(notification: notification)
        }
    }
    
    @objc private func changeLabelNumber(notification: Notification) {
        guard let vendingMachine = notification.object as? VendingMachine
            else {
            return
        }
        
        let stockByKind = vendingMachine.stockByKind()
        beverageNumberLabels.forEach {
            if let beverage = $0.beverage(),
            let beverageNumber = stockByKind[beverage.kind] {
                $0.text = "\(beverageNumber)개"
            }
        }
    }
    
}
