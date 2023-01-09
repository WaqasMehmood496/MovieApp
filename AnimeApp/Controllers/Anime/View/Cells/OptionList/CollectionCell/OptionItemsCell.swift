//
//  OptionItemsCell.swift
//  AnimeApp
//
//  Created by Mapple.pk on 08/01/2023.
//

import UIKit

class OptionItemsCell: UICollectionViewCell {

    @IBOutlet weak var ItemTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func config(title:String) {
        self.ItemTitle.text = title
    }

}
