//
//  PenaltyGameParticipantsViewController.swift
//  PenaltyGame
//
//  Created by 반지윤 on 2020/11/23.

import UIKit

class WriteDownViewController: UIViewController {
    
    var text:String = ""
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func mixButton(_ sender: Any) {
        var randomNumber: Int = Int(arc4random_uniform(UInt32(tableView.numberOfRows(inSection: 0))))
        guard let cell = tableView.cellForRow(at: IndexPath(row: randomNumber, section: 0)) as? ParticipantsListCell else { return }
        
        DataManager.shared.name = cell.writeDownField.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
 
    }
}

extension WriteDownViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataManager.shared.numberOfPeople
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? ParticipantsListCell else { return UITableViewCell() }
        
        return cell
        
    }
}

class ParticipantsListCell : UITableViewCell {
    
    @IBOutlet weak var writeDownField: UITextField!
   
}
