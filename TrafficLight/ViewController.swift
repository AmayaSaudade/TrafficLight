//
//  ViewController.swift
//  TrafficLight
//
//  Created by Darina Kirilenko on 25.01.2024.
//

import UIKit

final class ViewController: UIViewController {
    

    @IBOutlet var nextButton: UIButton!

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    private var activeColor = 0
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNextButton()
        setUpLights()
    }
    
    @IBAction func nextButtonDidTabbed() {
        nextButton.setTitle("NEXT", for: .normal)
        
        resetLights()
        switch activeColor % 3 {
        case 0:
            redLightView.alpha = lightIsOn
        case 1:
            yellowLightView.alpha = lightIsOn
        case 2:
            greenLightView.alpha = lightIsOn
        default:
            break
        }
        activeColor += 1
    }
    
    private func resetLights() {
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
    }
    
    private func setUpNextButton() {
        nextButton.layer.cornerRadius = 10
    }
        
    private func setUpLights() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        resetLights()
    }
}
    


