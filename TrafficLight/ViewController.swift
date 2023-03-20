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
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        startButton.layer.cornerRadius = 15
    }
    override func viewWillLayoutSubviews() {
        redCircleView.layer.cornerRadius = redCircleView.frame.height / 2
        yellowCircleView.layer.cornerRadius = yellowCircleView.frame.height / 2
        greenCircleView.layer.cornerRadius = greenCircleView.frame.height / 2
    }
    
    @IBAction func startButtonDidTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
    }
        
        if redCircleView.alpha == yellowCircleView.alpha {
            redCircleView.alpha = lightIsOn
            greenCircleView.alpha = lightIsOff
        } else if yellowCircleView.alpha == greenCircleView.alpha {
            yellowCircleView.alpha = lightIsOn
            redCircleView.alpha = lightIsOff
        } else if greenCircleView.alpha == redCircleView.alpha {
            greenCircleView.alpha = lightIsOn
            yellowCircleView.alpha = lightIsOff
        }
    }
}
