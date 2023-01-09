//
//  UpcomingListCell.swift
//  AnimeApp
//
//  Created by Mapple.pk on 09/01/2023.
//

import UIKit

class UpcomingListCell: UITableViewCell {
    
    //IBOUTLET'S
    @IBOutlet weak var UpcomingListTable: UITableView!
    @IBOutlet weak var TableviewHeightConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        UpcomingListTable.delegate = self
        UpcomingListTable.dataSource = self
        UpcomingListTable.reloadData()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //IBACTION'S
    @IBAction func ViewAllBtnAction(_ sender: UIButton) {
    }
    
}


//MARK: ---------------- HELPING METHOD'S ----------------
extension UpcomingListCell {
    
    func config() {
        TableviewHeightConstraint.constant = (10 * 100)
    }
    
}


//MARK: ---------------- UITABLEVIEW DELEGATE AND DATA SOURCE HANDLING ----------------
extension UpcomingListCell: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.register(UpcomingItemCell.self, indexPath: indexPath)
        return cell
    }
    
}
