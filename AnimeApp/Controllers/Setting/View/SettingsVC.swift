//
//  SettingsVC.swift
//  AnimeApp
//
//  Created by Mapple.pk on 08/01/2023.
//

import UIKit

class SettingsVC: UIViewController {
    
    //IBOUTLET'S
    @IBOutlet weak var SettingsTable: UITableView!
    
    //VARIABLE'S
    var viewModel = SettingsViewModel()
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}


//MARK: -------------- UITABLEVIEW DELEGATE AND DATASOURCE METHOD'S --------------
extension SettingsVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.register(SettingsCell.self, indexPath: indexPath)
        cell.config(data: viewModel.dataArray[indexPath.row])
        return cell
    }
    
    
}
