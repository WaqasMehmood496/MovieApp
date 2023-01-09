//
//  LibraryVC.swift
//  AnimeApp
//
//  Created by Mapple.pk on 08/01/2023.
//

import UIKit

class LibraryVC: UIViewController {

    //IBOUTLET'S
    @IBOutlet weak var ToWatchBtn: UIButton!
    @IBOutlet weak var WatchingBtn: UIButton!
    @IBOutlet weak var WatchedBtn: UIButton!
    @IBOutlet weak var LibraryListTable: UITableView!
    
    //VARIABLE'S
    var viewModel = LibraryViewModel()
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    //IBACTION'S
    @IBAction func ToWatchBtnAction(_ sender: UIButton) {
        viewModel.selectedType = .toWatch
        selectedOption(button: sender)
        unSelectedOption(buttons: [WatchingBtn,WatchedBtn])
    }
    
    @IBAction func ToWatchingBtnAction(_ sender: UIButton) {
        viewModel.selectedType = .watching
        selectedOption(button: sender)
        unSelectedOption(buttons: [ToWatchBtn,WatchedBtn])
    }
    
    @IBAction func WatchedBtnAction(_ sender: UIButton) {
        viewModel.selectedType = .watched
        selectedOption(button: sender)
        unSelectedOption(buttons: [ToWatchBtn,WatchingBtn])
    }
        
}


//MARK: ---------------- HELPING METHOD'S ----------------
extension LibraryVC {
    
    func setupUI() {
        // Initial Selected State
        viewModel.selectedType = .toWatch
        selectedOption(button: ToWatchBtn)
        unSelectedOption(buttons: [WatchingBtn,WatchedBtn])
    }
    
    func selectedOption(button:UIButton) {
        button.backgroundColor = UIColor(named: Constants.navigationTextColor)
        button.titleLabel?.textColor = .white

    }
    
    func unSelectedOption(buttons:[UIButton]) {
        for button in buttons {
            button.backgroundColor = .clear
            button.titleLabel?.textColor = .black
        }
    }
    
}


//MARK: ---------------- UITABLEVIEW DELEGATE AND DATA SOURCE METHOD'S ----------------
extension LibraryVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.register(LibraryListItemCell.self, indexPath: indexPath)
        return cell
    }
    
    
}
