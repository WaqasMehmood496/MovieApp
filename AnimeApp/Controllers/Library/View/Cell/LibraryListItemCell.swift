//
//  LibraryListItemCell.swift
//  AnimeApp
//
//  Created by Mapple.pk on 09/01/2023.
//

import UIKit
import Cosmos

class LibraryListItemCell: UITableViewCell {
    //IBOUTLET'S
    @IBOutlet weak var GameTheme: UIImageView!
    @IBOutlet weak var GameTitle: UILabel!
    @IBOutlet weak var GameType: UILabel!
    @IBOutlet weak var GameRating: CosmosView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        removeSelection(cell: self)
        
        GameRating.didTouchCosmos = { rating in
            print(rating)
        }
        
        GameRating.didFinishTouchingCosmos = { rating in
            print("Did Finish Call \(rating)")
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
