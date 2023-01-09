//
//  TopRatedCell.swift
//  AnimeApp
//
//  Created by Mapple.pk on 09/01/2023.
//

import UIKit

class TopRatedCell: UITableViewCell {

    @IBOutlet weak var TopRatedCollection: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        removeSelection(cell: self)
        TopRatedCollection.delegate = self
        TopRatedCollection.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    // IBACTION'S
    @IBAction func ViewAllBtnAction(_ sender: UIButton) {
        print("View All Btn Pressed")
    }
    
 
}


//MARK: ---------------- HELPING METHOD'S ----------------
extension TopRatedCell {
    
    func config() {
        TopRatedCollection.reloadData()
    }
    
}


//MARK: ---------------- UICOLLECTION VIEW DELEGATE AND DATA SOURCE HANDING ----------------
extension TopRatedCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.register(TopRatedItemCell.self, indexPath: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if UIDevice.current.userInterfaceIdiom == .phone {
            return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
        }
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }
}
