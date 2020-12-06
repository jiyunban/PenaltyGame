//
//  FinalViewController.swift
//  PenaltyGame
//
//  Created by 반지윤 on 2020/12/01.
// 00

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var finalLoser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        finalLoser.text = DataManager.shared.name
    }
}
