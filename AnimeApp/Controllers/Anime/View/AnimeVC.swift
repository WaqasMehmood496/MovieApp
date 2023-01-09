//
//  AnimeVC.swift
//  AnimeApp
//
//  Created by Mapple.pk on 08/01/2023.
//

import UIKit

class AnimeVC: UIViewController {
    
    //IBOUTLET'S
    @IBOutlet weak var AnimeTableView: UITableView!
    
    // VARIABLE'S
    var viewModel = AnimeViewModel()
    
    // VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
}


//MARK: -------------- HANDLING UITABLEVIEW DELEGATES AND DATASOURCE -----------------
extension AnimeVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch viewModel.list[indexPath.row] {
        case .recomended:
            let cell = tableView.register(RecomendedAnimeCell.self, indexPath: indexPath)
            return cell
        case .options:
            let cell = tableView.register(OptionListCell.self, indexPath: indexPath)
            return cell
        case .topRated:
            let cell = tableView.register(TopRatedCell.self, indexPath: indexPath)
            cell.config()
            return cell
        case .upcomming:
            let cell = tableView.register(UpcomingListCell.self, indexPath: indexPath)
            cell.config()
            return cell
        }
    }
    
}
