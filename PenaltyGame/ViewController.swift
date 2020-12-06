//
//  ViewController.swift
//  penaltyGameProject
//
//  Created by 반지윤 on 2020/11/20.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var peopleCount: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        stepper.wraps = false
        stepper.maximumValue = 10
        stepper.minimumValue = 2
    }
    
    @IBAction func stepperValueChanged(sender: UIStepper) {
        
        peopleCount.text = Int(sender.value).description
        
    }
}

extension ViewController : Getdelegate {
    
    func get() -> Int {
        return Int(peopleCount.text!)!
        
    }
}

