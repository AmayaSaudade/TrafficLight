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
    
    var activeColor = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNextButton()
        setUpLights()
    }
    
    func resetLights() {
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    func setUpNextButton() {
        nextButton.layer.cornerRadius = 10
        nextButton.setTitle("START", for: .normal)
    }
        
    func setUpLights() {
        redLightView.layer.cornerRadius = 75
        yellowLightView.layer.cornerRadius = 75
        greenLightView.layer.cornerRadius = 75
        
        resetLights()
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
}
    


