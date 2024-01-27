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
            redLightView.alpha = 1
        case 1:
            yellowLightView.alpha = 1
        case 2:
            greenLightView.alpha = 1
        default:
            break
        }
        activeColor += 1
    }
    
    private func resetLights() {
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    private func setUpNextButton() {
        nextButton.layer.cornerRadius = 10
        nextButton.setTitle("START", for: .normal)
    }
        
    private func setUpLights() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        resetLights()
    }
}
    


