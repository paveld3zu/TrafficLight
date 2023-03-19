//
//  ViewController.swift
//  TrafficLight
//
//  Created by Pavel Karunnyj on 17.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redCircleView: UIView!
    @IBOutlet var yellowCircleView: UIView!
    @IBOutlet var greenCircleView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redCircleView.layer.cornerRadius = redCircleView.frame.height / 2
        yellowCircleView.layer.cornerRadius = yellowCircleView.frame.height / 2
        greenCircleView.layer.cornerRadius = greenCircleView.frame.height / 2
        startButton.layer.cornerRadius = 15
    }
    
    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redCircleView.alpha == yellowCircleView.alpha {
            redCircleView.alpha = 1
            greenCircleView.alpha = 0.3
        } else if yellowCircleView.alpha == greenCircleView.alpha {
            yellowCircleView.alpha = 1
            redCircleView.alpha = 0.3
        } else if greenCircleView.alpha == redCircleView.alpha {
            greenCircleView.alpha = 1
            yellowCircleView.alpha = 0.3
        }
    }
}

