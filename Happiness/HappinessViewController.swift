//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Karolina Kafel on 13/05/16.
//  Copyright © 2016 Karolina Kafel. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController {
    
    var happiness: Int = 50 { // 0 = very sad, 100 = ecstatic
        didSet {
            happiness = min(max(happiness, 0), 100)
            print("hapinness = \(happiness)")
            updateUI()
        }
    }
    
    func updateUI() {
        
    }
}

