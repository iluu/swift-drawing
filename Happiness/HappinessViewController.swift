//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Karolina Kafel on 13/05/16.
//  Copyright © 2016 Karolina Kafel. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource {

    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
            faceView.addGestureRecognizer(UIPinchGestureRecognizer(target: faceView, action: #selector(FaceView.changeScale)))
        }
    }

    var happiness: Int = 75 {
        // 0 = very sad, 100 = ecstatic
        didSet {
            happiness = min(max(happiness, 0), 100)
            print("hapinness = \(happiness)")
            updateUI()
        }
    }

    private func updateUI() {
        faceView.setNeedsDisplay()
    }

    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness - 50) / 50
    }

}

