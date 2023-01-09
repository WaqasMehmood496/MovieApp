//
//  RecomendedAnimeCell.swift
//  AnimeApp
//
//  Created by Mapple.pk on 08/01/2023.
//

import UIKit

class RecomendedAnimeCell: UITableViewCell {

    // IBOUTLET'S
    @IBOutlet weak var RecomendedImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        removeSelection(cell: self)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
