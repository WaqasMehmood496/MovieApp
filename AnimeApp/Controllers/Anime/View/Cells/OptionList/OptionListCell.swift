//
//  OptionListCell.swift
//  AnimeApp
//
//  Created by Mapple.pk on 08/01/2023.
//

import UIKit

class OptionListCell: UITableViewCell {

    @IBOutlet weak var OptionListCollection: UICollectionView!
    
    let optionsArray = ["Tv","Movie","Ova","Special","One","Media","Tv","Movie","Ova","Special","One","Media"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        removeSelection(cell: self)
        self.OptionListCollection.dataSource = self
        self.OptionListCollection.delegate = self
        self.OptionListCollection.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

//MARK: ---------------- UICOLLECTION VIEW DELEGATE AND DATA SOURCE HANDLING ----------------
extension OptionListCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return optionsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.register(OptionItemsCell.self, indexPath: indexPath)
        cell.config(title: optionsArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if UIDevice.current.userInterfaceIdiom == .phone {
            return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
        }
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }
    
}
