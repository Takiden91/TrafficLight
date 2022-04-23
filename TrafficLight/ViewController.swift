//
//  ViewController.swift
//  TrafficLight
//
//  Created by mac on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    
    @IBOutlet var buttomTraffic: UIButton!
    
    private let dark: CGFloat = 0.3
    private let light: CGFloat = 1
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        redColor.alpha = dark
        yellowColor.alpha = dark
        greenColor.alpha = dark
        
        redColor.layer.cornerRadius = redColor.frame.width / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.width / 2
        greenColor.layer.cornerRadius = greenColor.frame.width / 2
        
        buttomTraffic.layer.cornerRadius = 17
    }
    


    @IBAction func buttomToStart() {
        
        buttomTraffic.setTitle("Netx", for: .normal)
        
        switch count {
        case 0 :
            redColor.alpha = light
            yellowColor.alpha = dark
            greenColor.alpha = dark
            count += 1
        case 1 :
            yellowColor.alpha = light
            greenColor.alpha = dark
            redColor.alpha = dark
            count += 1
        case 2 :
            greenColor.alpha = light
            redColor.alpha = dark
            yellowColor.alpha = dark
            count = 0
        default: return
        
        
    }
}

}
